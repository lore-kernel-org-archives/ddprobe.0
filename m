Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D33613790B
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778312254; cv=none; b=lBBFwHc4OHC33/pYebcyfs2HoGhmnNJSVPn2AvxGwO8/k2Yt8G+vgt7I1muwO4lGbj3n7FpP0SXYjZf1ozZe8BejrLgIKL9na8g4dAs+NtgqmHKdE7yKDKZ4oPdEW6QLwJ+SKUZn7Wp7fJ4PDUWvD/AlS1RkHxWq9pKr/Qoq9C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778312254; c=relaxed/simple;
	bh=GEvTeFktUiLeDBROob+/rUqG3oiBCH3/G7R/0aJ+/Mc=;
	h=To:Subject:From:Message-Id:Date; b=S0qrxX/RVQoUiezmAM4bCuDQnkfp5pNAIHEaal0aYE/SvkAN94Qj4bR2rKPAv8rfur0Rlw08kbQ+6AqbnOczvF6FkdVSfclJ1e/GkMM9MX2bHcgfeHtWYFQ/dZcTDEhnI2hOgHzr3n8n42dLvcNX6BWbnGQHxH9E5whKWrI64d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnXYLkTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnXYLkTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30F49C2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778312254;
	bh=GEvTeFktUiLeDBROob+/rUqG3oiBCH3/G7R/0aJ+/Mc=;
	h=To:Subject:From:Date:From;
	b=cnXYLkTlnuuDag33ZDlR1CB7wz05iwVJQSNIP2Ni4u9ukseW9fMaV7w3b3TmvG2kj
	 Ihvo3hQVG61ksFJsfWFxyNY5lDYiEnB/8gBndPS1Smi3SPigfr6jx9DHel0gXLR7b8
	 uYDRuLYuXCvjbGKZzSH7iRP7umZntVduUA0vfiqASKCVqRnBXuA1rCK80PL71x6kpA
	 ZgIoMG6Xl2zCZYwu7wrbtfF5FWa/c8bH+xGu4oFF3ccxQF3TuTceTFf6rqwy+/TNL0
	 UeT7vPuZtFXjgSLZZ9pxv0l367gy8ODCrzMMcPc0fXeIFghQzUEpBLQ5vkF/AqMZex
	 QYnlN2zpUH1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF8B5CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831225384.16399.7901096111977305247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f2f450e8dba6c003bac4437f6d63fbaf89156812e86b9e9984eca66058b4e
Date: Sat, 09 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778312253
