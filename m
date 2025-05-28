Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336512F2F
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748417994; cv=none; b=f6Q4GzIcBVijfvhWefAPK/I72e7r8FSVVuZf98QIMy7dL2Xo/1lCyXFCvadqiRGEBORfd/gbkP3y4X9h/KkRiDnHe9Nxg26Pw6eclGSVf0vUT3euFlm9cCYifNE8oRpP80IPLVY8HBXYElCiqsoZ1655ZJ8WrhUDVICYMaA+rIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748417994; c=relaxed/simple;
	bh=zrMA5/NrLO8KeSJ+pvOA+EGCBZExeHmtk/vRWtnGboI=;
	h=To:Subject:From:Message-Id:Date; b=Kb7YXGHIsUjAhm7FsT+FWdNsy1MZj8gFWhgzw8K9MpjpgzC+ZIblyBbghb1NW4ADvW8cIe/AbYAxGLvLODP3A0RGL4k++p3Y1aW3zupC3TrVxCgSAhr2yhhYB95SeuWkOzMTR7VmoQKYaMEryeDUqvpTc3ysJ+x6zPF+AVsgh6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9gRuLfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9gRuLfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B68C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748417993;
	bh=zrMA5/NrLO8KeSJ+pvOA+EGCBZExeHmtk/vRWtnGboI=;
	h=To:Subject:From:Date:From;
	b=s9gRuLfvAFM9p8wGHU/zyeinmChNtqaKmko9MLFHRGhVHu2T2YKj3luj/jK4m5r8u
	 /LmkqKY1MXbubRDMV+UrvOE8apbntVG/eRWjoVUBX3LHrCMYaQgCZfeCJzLKAgjeYj
	 QY6od9CzXy+Pv+iyoDz3H8ursGEk6Tss6dq3nn6bqIbOGJpr2m2mjTA3ZJ0r10cwxj
	 ytU+MtnDuYMGaCfihOaFyF4j+8HU5P49a9bFU5GIMPbMfbv4NhOWTmg2MMD/0HkRKt
	 73akJaU7a0kPHQ+USOtvuneTDUIMcW5s/L5JJBNkZZBqOJ1cKFsOiHXqqXxefCkMW4
	 fKiSzz0iiqhow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92893C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841799357.7112.15740566604483594790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8796d1e442c8c6efb26470777fcf7f3e1dfd44d2ec731a210416f8257cb8d94c
Date: Wed, 28 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748417993
