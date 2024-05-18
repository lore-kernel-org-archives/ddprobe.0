Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B64381C8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716018743; cv=none; b=MKwPasZ610e1xNgtQKdY4JEVP2Lw2jHYmLff83HUgsGVQvpmeKggXrtulHBFXCmmgCPgRdl93JUoQZtdnEreFh03sdyR9dHBKqNIfSy2jMwWKU2g8+CzSJmZ7uckK+QgbyQxfn0QDPDPKTKuI6Rae/Oh1fnGdbIhaQtoiK99vQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716018743; c=relaxed/simple;
	bh=r/Isf5yjIWipkrvor68/XPr9u13Qj5u4HV4kGP/0rJ8=;
	h=To:Subject:From:Message-Id:Date; b=BeccfFjToweIUYEAax2DFs7AKyJ0CV41kes8UUqHHrgbPHQc3dqgjuMon+QKk4Tq4yC7GGMY0VNAYMk676++NQSvFWY2Xkj3mPMQpmlIhVae3nfZr2OYFum9gKz96IoabczD4r+MsNFVDQTTk+CzAotp/o3cVqaFqccJwH3TNfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxrH+ZLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxrH+ZLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E6C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716018742;
	bh=r/Isf5yjIWipkrvor68/XPr9u13Qj5u4HV4kGP/0rJ8=;
	h=To:Subject:From:Date:From;
	b=YxrH+ZLlQ/jV1SoUDK4nUj/4w724NT0J8gcelN8dq/GTG6BIcMAq9Q3VFCT+98WiZ
	 lt+UfK5cpU4n4qtLhk0hGSMpgRuA29hEJ4v3EpFWOUf9J1wvXeI3e5YwggxnzY1pWc
	 MCt8ZGUn+pVuWH8yBMt1cgpMU9EqLqT1X73DWA2NhfUBleq3p+wJAu0Ji4iEVw3k47
	 +yW73sewU/TnR41UyC+BOqztTIKG+pNP+/wNmvKOnvPI6ZC0vm9nabWGUU37dpa1Kx
	 a/gFJpFE53L/WQAkziW0bESB9D4T44R4bXYRwu2hDvFIRnEImTlDQl1mpTHjC9eDLj
	 p9Rl6TnKj9plA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAA4C25B77
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601874277.9645.8740832788675008446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99be593c487137cb1840592776b43f98a3ea7264c52713d1ce46bd2f5a92e25a
Date: Sat, 18 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716018742
