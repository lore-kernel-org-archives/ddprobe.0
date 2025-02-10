Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A79223CF09
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739201755; cv=none; b=tIKJMddheQ1ikdTkcGmylO65tt2A9v9A0rItCdDdYdtYkPOr2ir6vq2jzC6idvYQy7MX4DFU4jc16MRAmg5WWIFk3aRYmDalAwZiecHCRsX/RdonOv/dwvneb9qfryE45D/8DuFdPjrfa1/BGcNw7MuZddHYLpZfIoox3+6PPpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739201755; c=relaxed/simple;
	bh=AOpKQCJ4k6kVYLlvrV+Q3VHzrvu6GseI8mvxkIgXGyw=;
	h=To:Subject:From:Message-Id:Date; b=pauYru3su4XmQs6jHtvoJ3GAfZrYLZ+QJcA6Xx8r4fWuMdB05Vp32Jx8pPTwD9aw3m9+H3CSxJPPeNxiFkxgcEBNPcLmnf9/1JMTEww5H9gGhIYZ9HjuttBe+kdA9Hkhi2rJOcjV5YJtx35VCMrGAvBgv6ObguIkUZRVabBe1MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADz8voaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADz8voaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF458C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739201754;
	bh=AOpKQCJ4k6kVYLlvrV+Q3VHzrvu6GseI8mvxkIgXGyw=;
	h=To:Subject:From:Date:From;
	b=ADz8voaINi3Wlsaf8t+qNVFmRv5q0e1AJ5p2gcdRbjc+hCq9tvtqnAgqz2I3FSFQZ
	 Mft5FVgL+Qw6IYobWWb7n4JQZwPs5ITpICdjWq6ijsWPiyme/E2Csp3xQ9iid1UuFa
	 eNI1CEFdgs8nkbbXvSNuEOjtod/RI8wHMmFa4qwiV4B0CMW4Z0p7Ht6wplZn5R5uxp
	 SVI61w6q7lRtMGDB39d018cD9JEsVg4nKrDYQ1x/UiRDXddEMtsTu9/BwpZe7DVGjk
	 uYKSa6rELHe0W3XBmSevKqRlgNnGFIVDTVgfKE7u7N10aRDxFAVL3Kg0EWJ71LEkQX
	 Al/LL9xkrUyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E66C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920175370.30846.9370953711452691735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c03af9804c36b43e3d3946541ede7cb615ca77609f4362cd11f1670d3dccba5
Date: Mon, 10 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739201753
