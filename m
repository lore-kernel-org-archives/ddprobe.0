Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E12D948A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602394; cv=none; b=Ih6yf1/tjdIb8ztWWDuOib+eRY2k+g0Yv+0IQ1GPFb860Qdnf9Ewq2XSprX0S6QvKISZcqlwF8bqTP8Dy0buxqZqBrw5Y0sg7D9UY7bVN/aeGE9DNMz8jzQQ3yHaiN67QlVuzPIxFe8Ss+OdnDGyFkYYJotuYykOFQ5OtkbGwKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602394; c=relaxed/simple;
	bh=jaysOzC1Q2UNzeRDM9lXOs/2tvgjKWVRYbGibe/WVWk=;
	h=To:Subject:From:Message-Id:Date; b=ZuDOOm7RAqEIgYNQMgwU1r7OqsAXBK2tX4IqRakDnmxiYUtSrgddSNqXaXZWZ1Y3GdJEIyikklds+OzyjpXEKnB4fDH0tR8NJX8DpgXfh2gyWo++bfvVrAcsHhNtZUGDNgv0L4p++awJajnwPWJ6wb8k/lJ+LOmXX+S4DeDKLNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D77IuukW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D77IuukW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7995C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761602393;
	bh=jaysOzC1Q2UNzeRDM9lXOs/2tvgjKWVRYbGibe/WVWk=;
	h=To:Subject:From:Date:From;
	b=D77IuukWpnFcka8S3ScLZlMyiWUPmFuMb9ZwIv4LE6zw49j0JpEFaWH/mJRtGakjl
	 9Xwf+DEUBEMSYzwcSbpW8cvIY+j0/V9qIrom/qt9+xA36MRJnkgKyV/eYmQuDCMYEl
	 1dqpfn6Bit2Ki1X4ULqJxCqC3O1lqmEIZZzhgMeJ8kGnte6o9FTqpPlcKazv5W9HQD
	 LqXt3z02Ks+IxUtCabMmN3ErGnmxILrQUlIBZ1+st6fGbttu6iZjQy8O2ozra5KTN1
	 sIjnmwGCS3B2+MULokS4VRLy6uFZuqOGQPMX4G9V5TWwm7JyjPri1TeLwhIFRadza3
	 Qo6GwaVHdoauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93759CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160239359.11180.12804026332929098679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f146b60d5aeba66b1bc6c2111f052c96db897eef0410c6cbf024008eb010fb22
Date: Mon, 27 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761602393
