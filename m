Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4C2EFDAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776183454; cv=none; b=BBYK6aQV6p+JsjcrzL5dw4CuFtGIv3lfjK8UBKXh+wOW3KENsvu2hCAtLSgx05NXBqZ5oKAVPRlGfv0uTLdbXhc1z6dOsSAK7smwuIz+/RczFkRpLW8Mkxpjw8QVv7xn+erE51iCAR7lswWDOmt1yDoPdG9YtGNycCiyLk5hPTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776183454; c=relaxed/simple;
	bh=ZmGIbon2M7ZisyIXHNmYXTKgBBKBXUdUUmOnRyvEgOw=;
	h=To:Subject:From:Message-Id:Date; b=nXoS0VcgtduvLfB77yg/J1jV5u65djtZ3Q2BKqtejM/I15LRQq3zyxcViRHJht0UV8cKaSzS0Zu+lSueNGDBCNb0YucWt5GKOO3FbfHCvivcVjgYkRXKo0phl+V6H534RktWWtL4IIoZ/4gJQ+3oPRj84YrBUkzKC2JGkJkNtEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWoBJ0f+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWoBJ0f+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F29C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776183453;
	bh=ZmGIbon2M7ZisyIXHNmYXTKgBBKBXUdUUmOnRyvEgOw=;
	h=To:Subject:From:Date:From;
	b=UWoBJ0f+X9ttxysZxOWyW+hFUr2rYXikxlM4HaBsj11jmHppsoO5+foVuVTsTVvPH
	 Qi6ScGQWk/3Zji2TXIPyPvVH8aE1LBFLucw4CRu01YJBpgPfZj6PEisaG1Sy5LC8oC
	 WKWdl6DgAFn/7JkaFAEr0b6ixhWRYlk5LnHX0Eb1kGISz+9dG9GowoR3ea0+MRFtny
	 gRN0MKp2ugGHh53GVhXzzzfnUGS5CIeNXKkL9AdpyBkpmyrwuPppro6eey2mshkaWJ
	 23fFfRTEM8yRloFj1bkrUS2izK5nx6rG/liemX48KEmMPPNh5gMPJNazcZw30ZK9EU
	 tMGjQx1fFF/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA874F9D0E4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618345369.15979.3012261451131604585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e581fada9fc39f661dfe5332f38ca48197fa2300f3c3a3018f135477cbcc5777
Date: Tue, 14 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776183453
