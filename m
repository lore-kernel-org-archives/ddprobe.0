Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309B113AD3F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748324994; cv=none; b=uuqaLkxAu2CKe7Bxnh8pNa4UKyJ+4NhTU1BF4vFwpQ1TR2E3GyfeK900DUND7I+sgrlmmnE/CMRO0kkOVIRCLvFP5nJ8RFDlL1R8H5TV35HoiO1ObTYDUkENefQhfNZythFVcfAaQipuagvEwDxQ194glkelGQxF0LYqMkOKh3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748324994; c=relaxed/simple;
	bh=bSspKJAgAnz4RfvCB0jjv/T0D5heiKigdjk5dfsOgiQ=;
	h=To:Subject:From:Message-Id:Date; b=h4YEMOaxdMu3OR10aniM8dVnKKPpo/UL1V9ck5caJXB00a6RQ9Up8ONCYdPbndsNeLk8vCBCgRIpBy+P2PGrv93idE7c3v2Pxp4elURsIMQQefImhxtOW4Ddl+uMZNBwa4s0Vtekf0h3sVkV7DZUFMHc4KzIHaoAbcNV8cnjUKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoZTIWpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoZTIWpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34AC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748324993;
	bh=bSspKJAgAnz4RfvCB0jjv/T0D5heiKigdjk5dfsOgiQ=;
	h=To:Subject:From:Date:From;
	b=KoZTIWpRjCJN3/LcgdMz6KmZQJNXVU0W5oVH8goaRdmhNToOHApDMxO35K6c9ZVKB
	 dz6jIRHQTsGGvyPIe2ThuEZClcYSAVHjmCCVr7Wrs7XCcsv+601LwEWcIKfzsaFKvX
	 PTZjByUIMu5H4ZDB1aL+mAzjTvHAvKk9C5Zo9LNAROJ34vE3Mcp3PCpOsvXeOJs5qH
	 3Kstv0zBy0bV/vZofJmWVfBYvvfi+Y+qdY/+ANh4spCz41OP4hkyDmsak1gFVhDCKl
	 g6gnAE867X89t2aky1fty/qnVKrYG8/0QEy3RqgGrJxUuCY6vvVjhvriPYjvwsNUMS
	 D3e43wUqYOrww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B7C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832499357.10214.3473699251827881026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b613df0c196574edcb66e92fb5cdf09a9cf2fda4a0a229c09ae25d7f11b54b12
Date: Tue, 27 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748324993
