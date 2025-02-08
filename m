Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6465F23C8C4
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739008554; cv=none; b=UUcYzFtYskx6V9RF6McA0ms8OuBxSwqeo8xRflTjithMKWJ9Rj5h0HPZw253RJnmB/wEv7UzK49UYFc/DvlfqQlYttoXP1T6+67Yub6/twPuSkhFgi/adHsZgFaOZFS+AYYrN6PidxdFL+W1fyuyR0QEkVGreanFFbBrdigIAOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739008554; c=relaxed/simple;
	bh=WFMzKjolVmUyiCbqzvYD3tm0+UZBWdcn7qV6TFqGEA0=;
	h=To:Subject:From:Message-Id:Date; b=VilDesyKosTxZzEtQYlHaqG1htBpYBUtqI7rcgvOaPxXu66u7wHFgGwVzkYlMXXbqAO8aYjTEoKgtPljljeaxmBh7fFFdTaMRZS1VW8zNWAMVrPZhY3N02n9u0AMkX7R+qPlitHMxRd1qeZMTeAvE4TbSmfobsOCQdearodoEF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHYkS9n3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHYkS9n3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3203C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739008553;
	bh=WFMzKjolVmUyiCbqzvYD3tm0+UZBWdcn7qV6TFqGEA0=;
	h=To:Subject:From:Date:From;
	b=nHYkS9n3pBZhKVgusOxXv+xptYRPO6HoEWk0NCatc/uMhW3ktdxk4yguIzs6o234e
	 PM3MN92btSRWL/yRz8hKqb2+p9SfYS1JZLFkB9AOUW8n0ZMRsPHIKcN8hTFdxbE8LB
	 qOnpM60IIghnnGli6cSz6ZJpgyj9izZmEW3Ke4K+/8vJXxsJcLV+KeGr9HI2RnxXyy
	 XDiZ1u+pcpmSFRz2GJMvj8zVho04QPKnMm/jY8T123i4uvUn2z3T9tI5NUaM6dTVZS
	 G/rBSF/QGMhuCa+NzPwvBX5yS5IYoXXvIs4JHibYxO1MEn5Nxb9V/B5/oJlHRMTKxS
	 pMQYECFBQ094w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A603AC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900855364.19797.13410252515543714255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34332a6a06ff29530172a37aa068a07a38a63e7a1a91debe964e126ad4a7cd66
Date: Sat, 08 Feb 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739008553
