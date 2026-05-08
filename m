Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC7E81AA8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778258854; cv=none; b=Z4XLiHODKKrNN3typu9EjAmluKIIgWX2umZXd5t4/na+npaglCD6Sa1yk8qjodgPGxBK6bA1rfYASKcF4GIXwUN3cG+TxTIUaDD/hcDc3wx2WqkBJfkLjjXZ6TpuRff2AQ4Vb2Y+PBQCmLdATI05QpY6Wt9B0m+y1k8Yn3iPZOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778258854; c=relaxed/simple;
	bh=vxcD5xFQu9G/7aYayQtFsNg9pDxVp16pDuJ+ruxr/tk=;
	h=To:Subject:From:Message-Id:Date; b=Wli/2/hGGjFT+HnLsOUdK9AJVJDZG/GC/hnULsVp58drCt758y3q2PUGyaGRLxblcan+97apmFS+1Flo1fqaDSK9DMcNAvxtBMCX90zf3DpmiKn9vOWxpcUWBh58aD1GnurS9tte8utkSKggcBmQJxP2PiBFjtCo6T9GCbxC1Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG3nSeR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG3nSeR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83E3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778258853;
	bh=vxcD5xFQu9G/7aYayQtFsNg9pDxVp16pDuJ+ruxr/tk=;
	h=To:Subject:From:Date:From;
	b=DG3nSeR68HsG5VqrFF5Lt3QGHOsolFSFFJ/UCd0MBFOL/dMNkya9Uti4hCgEAR7d5
	 aE/LNORgatSsqzLBTkl5ZkvwqRXJF7i8TCqJpFNPLhYnjf84qulrmgU9oWGSO/WWxh
	 eBYlc5Xs9t1leWQRXa/O3/lGViRxcG33Udb9BXNe/zkP0fnP1nPJ646ih5GCGQraUo
	 bZP3D6tD9pDqP2rxqHqKxujsoMajBtYnJgjVQw0ui4EKQSrHI6AaEJXJUqGFmHOO4g
	 rNG+cB6p9FPcS/oCIdgt+YJDB1SKY3Wy3sjsktRQPfVgWVkBPedaoKq4fgI+99sNHG
	 zB1r8O4PlQFXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E98CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825885370.32654.12676360970022771087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745df10c3730bc43c967cf9bb3865f18331e6c02c9de763d79fe9290362f19f3
Date: Fri, 08 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778258853
