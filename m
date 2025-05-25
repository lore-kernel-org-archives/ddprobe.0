Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD42F2F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748141994; cv=none; b=i6Z7wG6YvYcs01XdQROh+rOexqRs47As9YfYZzJWnMAFtacnifEYCzdSAlF/QFxa+4C8fhWY3Ib0zimzpszRpK1SvTXILxuGXcTLS2IjiFlfpjDuJNfcoSyuuMeNbfsSu149kX8eRUY2Fx/jVC4fbw6IqLMds7EKucZrjnhfEU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748141994; c=relaxed/simple;
	bh=xsrb9OvmYXNs6UA3O6VhGdQgpfBVWGzmWGvaGCKRj1c=;
	h=To:Subject:From:Message-Id:Date; b=AwXbj1oKZg8EyxEFh818Csreucru7xufZ5PMUCjpWKp178cantFzs/0YrLW0i7wOeu/itu4k9zzfBW9UCVd3nOHY+iZQoH5M6sm38J3BL0iYLFQS6O79+IOQU73A5w8+JsclfquprpAqM3HrQdu/1RbWzHMKh9zcw03ucZYApZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0v+4q6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0v+4q6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93EBC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748141993;
	bh=xsrb9OvmYXNs6UA3O6VhGdQgpfBVWGzmWGvaGCKRj1c=;
	h=To:Subject:From:Date:From;
	b=m0v+4q6IA5vireXugriF+htUAkVFA8G/Mq+NXBM4st8gZA1Tstya1n9M5PyP4Eots
	 kDAaqJfSTE+uFuoP7mbFpfHEJss13v7lD+XRpCcRpxQmd+szQ5cfdiBccfFJjeut6K
	 qmNaLPZVgFOoPFq0uY7rz4L5xQe5uVHm6Ik5DwWrEDmoj6xrmPidLb6LKmJhJV9DLQ
	 6WNLqwGpwG2YfEA0yzMGFWmAlsknXoK7mS3iKTkBLzrEWLlrjsb9gnqWENfOvdNq97
	 Ok2m7rrY0rGmi8bEiIY0FI88zHjt3XkonR96WhtSN4tyWcy43pK0wBtPeqUkB1QcG6
	 5y2T0JvVLSjJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1FC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814199357.18271.469090706993943587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96611b2747fe142c1d5ca129bfde632ef670f934fab6facde62e79b87f43230d
Date: Sun, 25 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748141993
