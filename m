Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9821946DF
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765633374; cv=none; b=bqMpy330PJb5zkNDneRpuioo11Dem/20z+7fhC5tHB7ZemmaiVhqnD4+mQTIxxpBfIDVr2VkKWsZRx/rBnRhVEHq/wZCuxvK+ZmsRpQvQrbPh22bKwoOeC/1Nb1/pGmReCoHAlrSqsrnBLxM0kISc6s8kn/6jfr2GSPGMIjSjtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765633374; c=relaxed/simple;
	bh=Pm5Sg1nIzxoyTFJUVIbaEcWyX3hOx5vYTp8JLdw0kVY=;
	h=To:Subject:From:Message-Id:Date; b=Sex4cFg2hvjEV+3lb17cqfR7LkZuaYb1samdSDQm+JxP5Q2Ubf/OCl2/dvq8iQvbQ/zE79XRum67nDNvP+z+8MA8H5mDZN/3PXp7HTOvjr6L5qpaVoyRvvTsk6+s3+8GqfpDP++zBvmJZpP4c8GWDNZbRL0ookIbpFvox4urcOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/sK1dRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/sK1dRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B823DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765633373;
	bh=Pm5Sg1nIzxoyTFJUVIbaEcWyX3hOx5vYTp8JLdw0kVY=;
	h=To:Subject:From:Date:From;
	b=l/sK1dRmf8Z3DXBD4YSOwLcd0dBNvSevZ7OtLkSGOCfAgjPq7rSJOGbcMD0K1R+JC
	 sG6TTFhqGgxx9foKMlHCS1Ol+F9djlp58Kc1pc5RGhTkpzE09mln2MkWqhPqQC0Z6h
	 XPSjeZ3dev8MGfmtTG1n/scMv51qOsQvrwkn5Liv+dzFLkQkXWpRBQXgV4pY7Hucr+
	 oxrabPkhx4TcTk/56cuaqOtks3l8zhZ5nQUYOBdC8GJaz2awOT2wjGxpEb0/XKok8I
	 fO7MGyTSLIaY8V6r89J45cg9GCsqx2qMDJsqoU0C9tR6l7KxdzMuqg/lhS+TzUJlXn
	 xxGsuears3iJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BB3D5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563337358.11383.2743555194660124456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d305aae37a07086826fe30adb79a2261243339d5fd23203ea23c56f5903d20
Date: Sat, 13 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765633373
