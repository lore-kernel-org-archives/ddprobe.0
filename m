Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6876E1D6A8
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716162743; cv=none; b=mmYRhBboUC2IVd1UhOtc5anY/zYtHbwouLEPhBo1SO9CbanAp7HAn657e5oHy1ZikCUK3U1y5nXOF4hsJyP4fUP1Z5LHlfRxKo7OQSVY5Xva9ADACrGYdYU1TgLN8bRCLwdcihqlDUu3csHgNQ26ilXRitq3eMbQCfhQd5iVktY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716162743; c=relaxed/simple;
	bh=A1UYzOoCLEVaKJF/ZhyadrKg25EI5A7f7dUwGLqNoo0=;
	h=To:Subject:From:Message-Id:Date; b=UCeH9DsRDCf/G4+rBXxklzQFg4IK47dn/9qTtPj+5Qj97z+qa+dG13piIiWRtuV01kXHLLLVPNdANcaWxrnKzTzhnrbUK7PJMHsDMaQf+nozbTPVKuUJ8CtXYkJ/fnmG4iViqND6EU1yNvPuEWGJ0rY7VQmlwcWW0dtpCTNd0aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOTX6vcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOTX6vcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CE2C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716162742;
	bh=A1UYzOoCLEVaKJF/ZhyadrKg25EI5A7f7dUwGLqNoo0=;
	h=To:Subject:From:Date:From;
	b=SOTX6vcS4m9DDEiPQGWCt8a67ZbdsizKpxK4y23dYa0/EWfNbYCFVo8SeWfIvIlyq
	 RPQa4fAKkgTgf8G7FPaS4TNt0v8MNS1ORxUL0e82OFRsG3x+DWkrsR6BfMzQJZDvYx
	 uEa2ViZwtzLg459BL+JRE/gG1zEc6xU/aVlUBiwioP9M56ku10DcAz4dsSzKfz4sBS
	 14LrNh5ZcTTXVT8pD/QI4pXtK1dPZXQ+IsEhMi8xWkD4v8b9xRRGvBmEa6LSa4okJ/
	 Zmh2I5Q4tXcDSZQjZgodezNJfPF0TodsP/UfFCRzxAjVC3XYb8V6zGWG6BABa0Qz2b
	 SxboljReyI9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E0EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616274283.541.711576095155661827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a274e689590d397241070086786d3cc383e6360a99bf01618a5fa9d6ae9b24
Date: Sun, 19 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716162742
