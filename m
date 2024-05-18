Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D72D517
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716047543; cv=none; b=LF0ZQtD011YujL8gPjIv4K3tA7yhHz6CcT1oVX54TM6H+eAcDOp8gptz/oV5fiIW4RYM6AUd3AxW/ZcZtOturvsPKZDB4DX4FQ6v0VPSSqs5WzB914iXRRTqhSnB9iGjaoxl9guVQ+gGUFTld/FYSaNwyDOlgAmKpKZpTtsUBVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716047543; c=relaxed/simple;
	bh=iC7L1u2FQV/FwIy/+14HT2PR49e0xVHsxHyV4CgTDLg=;
	h=To:Subject:From:Message-Id:Date; b=VcYIRedCyZwoTt88lWpN7w1+1c2m1Ypw30b8hXtwOI7cCL1oCt/2qERqm+gBHgQacBcuVHsXNF0b271J332ZyWjFra20ofuMDswZiBcZtxjksnUz9GQ0iPdtSoyyAVScpg+Cxq/JCqwdPYVQ7gjvlmKxp6YSondFWDC6srULLjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sphyFeCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sphyFeCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2494C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716047542;
	bh=iC7L1u2FQV/FwIy/+14HT2PR49e0xVHsxHyV4CgTDLg=;
	h=To:Subject:From:Date:From;
	b=sphyFeCXudGAEuZ1rdY+8CuVrkh9lyHfIf5rC4CtfDGv92d7vfSdH60tUZk6YZxvG
	 K0rQht1Ox6+p9x2tGxL4aPRcqErmf/WQ8zZ5wfCFPhhRkRbS+ZpzV/2bzuJ/HiSICT
	 77/yPtZ+GluVwpbRw8g4y1oOGZFyA6dAFLS5bOx0ouxluCcw5C/yeHjneBg06p+4Yd
	 0W9yA7rPxNRblRVVAoWpLtKZ4SIFiWqorFXqXzVJzEMtGSPg/66bV2Ey9HqQ092BVE
	 bcBCJCyFFBDEJvsqK569cUyHamOIu5GKL2vGmlNsNDStvrwJBWhcUk1kXFvG4+UbbD
	 b4gqntXZ/5Knw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF217C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604754277.19404.17190102451911057234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7441a1f1339cd828fecb4e20959e557f6a566558241caf1141e7f0a54b4eb4
Date: Sat, 18 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716047542
