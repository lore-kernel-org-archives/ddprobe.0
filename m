Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD71F936
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779148834; cv=none; b=Kc1RqWakycJ4yCU6ecU899BKBtr+2PuD1GaQd2l+KUjN4e/FxCvO39GRwFqlnR3yn5LjihVxWP4DR8Q6cCRAwkSpBT5YB2+my8Hh1Z4lKNfx3I9Ntwzw2dPPiZX2BjB4Znh0CGc7hi3Qu0+Vyo7NtlLwoPVuG+6H9RIMFBGdc/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779148834; c=relaxed/simple;
	bh=zbulF4I/Bx99wADafP0zqJvGlDFCIg68YKcIe8mZAbw=;
	h=To:Subject:From:Message-Id:Date; b=G40y+TBwSU5Ick2Gb3/t+fDTyybatnWUmDfRdFgRsfjKNzCRFVZCsiPIAmXGjPu0N/j3Rav75gh2chx+bNeABFhs2Mb0NaLt4SMCWTntBb5K+MvQPobYJedpPPLz0uVqgmWAJnBAEyP+izXeFbCc7S53b0Tryoa6GNN4F5hHoQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nozIbfHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nozIbfHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC647C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779148833;
	bh=zbulF4I/Bx99wADafP0zqJvGlDFCIg68YKcIe8mZAbw=;
	h=To:Subject:From:Date:From;
	b=nozIbfHU8OoUOVbRcbRD7UmzZEv2UxmrNR8jeNRmKSXGm5cdCsKpt1NV/fJv3INEe
	 G3UTi9Vb4V7OpIuYdd2BO9nMOHEaiiqaOk78Zw5f3YMU3avNIgfGmGlybZPxxlBRDR
	 2eASwpleeEYqget5MGxIDRfVRjweocVlfeBDbUXwSably1omUtL1LA02gpcVDAbDxA
	 pVYBAPjya/Q6w4mnEYhXNiKGCNyLJDmDBsSTCpMk6aJKYc0TzigEJrfYU/bfOE1gbS
	 xnqYneT82HZNQb3NWKmk/kKgF2oDzWeD6vYWmGTR2/svijzr261fo0ZPgKfpD4VyXf
	 qZN2AeNYxILVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA91BCD4F4A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914883371.2617.1201080747941605148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa02b1c27c0c520019419f25ddfa09da7c0ba8114390c1e842bbde6f1acc4204
Date: Tue, 19 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779148833
