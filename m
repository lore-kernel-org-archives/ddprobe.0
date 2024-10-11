Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253871885AD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728666954; cv=none; b=iC0lsmGDOpIBFNTnQ4yqO2ptx8Wdl8OC6RjcJnmj1A5ZYcu4mdLKrggP1cr6rKb8t+BYLcCQxAzu5Yv2SnSUJAClwvcOJAJOsDu62TiYmS8ZYYueGC9I3r/LzvTm73PfQI5722KF9C7f+ZXqGB7sXXnUSfRhgp0SO3bT4h2/XNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728666954; c=relaxed/simple;
	bh=hAGwva+tWw6RfJtqHTXN0EKPTizxhVVJ1rhz+QgtGwM=;
	h=To:Subject:From:Message-Id:Date; b=L0+too/iDBhc5hlIpvoDtpH1YmroAL8WfBgR1jC5NKc9dsMWgBewqXGymwxBck3rqWLaFNWt1vyBlDjkvRgDU/RevzSxg7uShRBaIT9p3okPM6upW9sDhnNCiQPOJ/XVXYXCOKQOwf6EAfJ8iBxf3hgpN9a1JhSHaWgPoIyWHsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QF7QbmlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QF7QbmlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA53CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728666953;
	bh=hAGwva+tWw6RfJtqHTXN0EKPTizxhVVJ1rhz+QgtGwM=;
	h=To:Subject:From:Date:From;
	b=QF7QbmlYR8AebaF9th/EnFIjDmfwBSrS6r4qDZP/sDK6Q1yp7OPFfhFrUzAtggi4N
	 mVCpv4MG45EAYicdaZkRIM1d1ZvPv+DpIrxHQZk7soQX0SeHpvb04/ibrdlrwpZh7d
	 bmlQFPiyqbaQuHQYuD0osDsv/fml+8PKmMlCkRzVrvySvVNY4p0gd6KxEP9IUBjBdw
	 2Q4Q8FyOGVbgvRq1YZxqhBcN74ilGpCHOZfgFtNrEsU2YfyhYb2ARqLevduMYbU9y5
	 rW3uOi7+44HICMrlzRopMcNHYgJvqWcdQ2Lim5KFn75MpSKlK+IfEEnA05GvFhDrUI
	 HC5bpx89BFp2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40BBD24470
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866695365.8301.16359518799845337460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ade6226ae281f5a886bbc93095e6a98ea2c04657135131188976b3c92884e49
Date: Fri, 11 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728666953
