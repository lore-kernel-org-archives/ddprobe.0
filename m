Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38970381C4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752452394; cv=none; b=XPJFHUbZO0PbPAuNEFPjdkMV7J5HsIMfsiMdW4ljevqSzSLghoBdbSiOuB/9ZZxgDWxX+8aDiGdy2HGcfqtLS3eRyHpB8cSXFSCjLzlxC+otZZN/YQQx7fz7r3ppzEci+ahK63NhN3fQAiwPDd58D7wWaSQ2wS460mYTWPF07iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752452394; c=relaxed/simple;
	bh=85sOft/PsKm9dk2OTQad7F6MJn6Hu5bpNhPxU88b9+4=;
	h=To:Subject:From:Message-Id:Date; b=dQTRgX1no4AaFq0K7a/PFG8KwXjev13b885X7xL3xps6/YEY7pT1GpNKeGft3DGbuW0IRFVF4WVy+tdCAGq4tGXeO9HSfVFKgjCWU1AwmXVELOJ9Z6nS/9/bqkwFsnwfiyQeww/q0h2VwGrjuA4jtvA2/5Bg+cuY1KA9EagKTsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1pk3AaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1pk3AaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6E7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752452393;
	bh=85sOft/PsKm9dk2OTQad7F6MJn6Hu5bpNhPxU88b9+4=;
	h=To:Subject:From:Date:From;
	b=K1pk3AaMtaHJBQNitlb7E1n4quWhBAgMFd3J3CFeqYDByfRIOkjgSsRqf8mXfcn5/
	 OKy2Xb1rPiT2s6AKNDjAjdDSx3kmd+TH3h7dhkYZ3+O4xNf8TXrIICir2sUYm9TIMV
	 lxMYjFe3vyQGq86TIgIdtgAQrQuXmuwuScgM3E7S25SFx6xaxVWaGZmgCUE+hk/wwI
	 6HoDwliWtSv+ENvgaU3Y0Gd0Y6JAeDmnO3zAAcDDrN5NQh7N9e9O9oD65HSudByKFB
	 0/TJVQRMO21gR+5H3ni1uTvSh4oqf5AB29n25OCJ8WWGl4ojlBrkWZRx/JQJPqFnA8
	 zroUML0XGpRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245239357.4440.12316933872649953449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63cdb285ec83afe7a0da89fa0c48d028c54a0d91ac8f8a467c53bf7c9cbf06b
Date: Mon, 14 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752452393
