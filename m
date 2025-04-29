Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468C6CA5A
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745887794; cv=none; b=Cj919B9zpc89ZAaJ7UNnrLZeE8CDrHgs3VOUy6x2IvJRt7GDFFRPuJyMCnII2cVaeVC57F3LYZCwikFde2k8ghor8Ig1J9AncS+KniJKpf04nZVooO3qOrjdtP57JH6XkmoOAau3Rlrd6K1J6jdZfTew8Y89Suo7d7K9dmzgM4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745887794; c=relaxed/simple;
	bh=/0UZ7BZ/epanP0u2eGITirRFp2h3c/fvS2cgSAqr4HI=;
	h=To:Subject:From:Message-Id:Date; b=lBaBKHIMfkdXELsdpdLjEsciuY5vn7FyRwUf2DcLUWFgsgzouk07H6Iy9jtLzTTCcwB2D+yjp1vQxkLj8aJbo/8hcyscJbZgEXRMF5LoSc+vySlx15gmvNr3vq16gYlN0r76mQKOHSVv5be3dqIdqtXN9dwATZSMfFy1dPRecWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg0hGMyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg0hGMyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4558C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745887793;
	bh=/0UZ7BZ/epanP0u2eGITirRFp2h3c/fvS2cgSAqr4HI=;
	h=To:Subject:From:Date:From;
	b=Wg0hGMyIj6Ix4uSjxhejsbs9e+IS+ULbhSK9+Zyz5G4vvw4aKq3D4Qwg8UUk7sG8c
	 qOF95eGmyo1rGcw1rMnWx89C8XyPbTTEZ4ZjldQooerJEcfrzzkF7T/qOO2cCRp/WB
	 rRmBncvqlDX19chsM3ojesRcGTgc6UuLvMXFqDx92cKjZGSd8njYOrC9OrPWoPdY+P
	 NeuHteng736BTgVkpHTOcWMFDmLSZKJvU7B3Lxw3ezZlWgWQoOtLLLoIZFg7DxHZTJ
	 n9YgMSicvlE+yt1WVyQHVk122Uc+mRWjJmWLKrxtnL8JxFy3qryH38Q0pGx28lEuxn
	 M3b4MFc6bX9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C15C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588779357.23547.15389322888607674389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9b10e4eb99c760f9027bef37c83d5b47357524c8c49b0de9536861c75381ff
Date: Tue, 29 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745887793
