Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7FF23B62B
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779500554; cv=none; b=mO0TKfNtimlRxn2Z3obcf5LWcpmzBE/b/Mv+tWyQkCIgLblB3FeG4NZli6zw6G1orX3UurPsyq9Ri+u8TAp+WfWuro2FywRS7zHwSQCfv3GtynnmaECmEHqXQ+UDdQEAkMZ3Yajd2dAI6f5pprKsqoRYF125NO7lT3P43Sz1eRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779500554; c=relaxed/simple;
	bh=MiFvQ0Uge1ZdSCLj+fqhPZhGfiN1231ALWAgYIL9zd0=;
	h=To:Subject:From:Message-Id:Date; b=UdDeJg3k0hMuIxaSKRbvGQU23oiNdEKh2d8GMGZfBKf8xhXwDIYoX3lxpU41HksHuSEbck8g6uIjKErngpk1+kiuMuEq04mBCSTLyaLrlY1tYy5F/O9LxN3XJQ3VpvQ+uGuFBxiz2Tx+yFLwZKH0D73yDtbux6tFWlAUpkmmgyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn36uBIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn36uBIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C657DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779500553;
	bh=MiFvQ0Uge1ZdSCLj+fqhPZhGfiN1231ALWAgYIL9zd0=;
	h=To:Subject:From:Date:From;
	b=Hn36uBIG4wbO+lIxCjZvT2Oe5u5BSVjyL003mInmTLEkG5xqCZD9swmIw9sTtAxII
	 22MNqECK4Pwh5jmSD8LTe6k7foXcGZcwIlSn3JUmktO39U4r9aJJ9jZ4e88IZI6aHd
	 8SuRYk8JQ1jTDW2Vwvli9ZTqaaKea5WU0TxizOYRbelo5SZyHv8jygrTYiB5Fb0nGP
	 6D8sylcM1BolNr/jZnHB5eMCADQVNKmCB3/46jtgqHSOq2n2bu5bRxRkdUOLNtgKeX
	 jH/dO9+QqjhrbPrkOK0Nnt5OPhZr38gsUgrANmIf9+wUJwTqQAtcnY0rgD4WzpTkdi
	 JBzhNn6RAOccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC85CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950055368.32483.12174949610629010420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cea651e1d6dca38264cf1b62ce351da93b31508902bbfd05abc30587eee4631
Date: Sat, 23 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779500553
