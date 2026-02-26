Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039FC32C958
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772071494; cv=none; b=fqsj+GIapcEwp1ntD/8g1OmYHbu+I2noJD9eLRvKHmQuNaWxVHSnDlAYcw2m0Kw5/xYvALG1QY49NaRYvjwn01sk9rp7KE2eh80lGd7PKia8Kxbf0Zqc7ctacJRtv2fcHnnTScR/mGDhpSHDdtQuENOCHcDUUFBatlE9yl1QzIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772071494; c=relaxed/simple;
	bh=+eYny+i0QTIjQrDCh0HGlm1wYWakSKWXS4fJVzAnVVY=;
	h=To:Subject:From:Message-Id:Date; b=nurT6DuTRFQU+afce2n0yvS6+gzIt2N6lPqZ/h4V7ZZRCeF+Atng9B6oSwH46GA8CL8acG+cPlS4tO4s16LyL7Klq16Ech4mxt9yAHd3n1rH3WAu4WLyz1Lq24Nj3RwjEpggpvPUYxk9VfCFQlRQsthPFMeSF4AGajCfYkBzq1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS+pFuOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS+pFuOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98ADC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772071493;
	bh=+eYny+i0QTIjQrDCh0HGlm1wYWakSKWXS4fJVzAnVVY=;
	h=To:Subject:From:Date:From;
	b=DS+pFuOFqKdbqoHXFRdM4A8rMM+z/f6ZnvS7umJvWMZE5vShfuwoAdg5K8UvBWTrs
	 20wGvRMzIwwSGtIoAUTp5xPVwBSUmxAVXMlLE2q/jMLuTtddPcmwRzDv3ypvjCL4y4
	 jbH72eT5WqUQlozVPfsQxGw+Q+uUKyS5OaNN8v51RaWPcziGFbjRxLjcN9eujTJmLF
	 rWgjS/XdGdfK8uYu/OhdCCgC8uZnZcixCj1cG1PsY6rPUBr9I+Hla0Yf5b2d+25LWe
	 nkfodfY1SWLlIS1cdLPmyli9iZrgNhAImB5FpoAHUf8VZHg7T09/9DWr2171cOuHjP
	 2r42n15HdNtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D41FD4606
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207149359.29961.14393035976329857657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8012821c5cf409cb8ef1127bc18e5545711c261bf7956b90dcaa7de406a4316f
Date: Thu, 26 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772071493
