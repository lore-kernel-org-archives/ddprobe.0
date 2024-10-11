Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D88215023
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728646555; cv=none; b=eRSyFrLvIrHdr9TEJOZzUw7cu1pFOZowFeGXRrm41KWW1MEMnGJLJGYxVut9ib2+r1g3kAWyleAvNIE6Tz/n7JR6CISNEx0Qi886Eg9EQ3I+BYx2eie5uF0qXiNtk3TDTb7mIbIVpmquQehP5b017ukmpRGSJ/HvsHbKvQuSRf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728646555; c=relaxed/simple;
	bh=dnRTDKJTo01gejFRHxKOvtXcehvXc72y3JuFRQdOSHA=;
	h=To:Subject:From:Message-Id:Date; b=KhnsuOBCLESGaJa2xXFbzbKqfTdQJVV5tYrGvsBUWyGuphCb7I189UEX1a5GTpXOA+xWRQLILmiuCpfg/g4H1BvUMVSwIzygAebkMu2JKGg+C9okjeN1fpU0pwka+6ea+Khn6JoM9avm6kIIhQtb2SZYwQVr3yVyT5btE4fDUH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKbX4wm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKbX4wm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E8AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728646554;
	bh=dnRTDKJTo01gejFRHxKOvtXcehvXc72y3JuFRQdOSHA=;
	h=To:Subject:From:Date:From;
	b=CKbX4wm1oOXVu14EacglgVUSSAk/iLcG44VWIFdJMvklBDzAGDODwXpmy1oJH7xy5
	 oHD9hrfCgePL6iKYmighD2AsVq7WfcVgOD2zgedrmxDbnfjx5wKLM8Vb+RgW2v5qSj
	 x+ElJPGlaBZcppYjqIlPdAx4aB9fib0yPNOL7f6n9Vq4SVfyezonOxCCVngh9qWyJs
	 kkvQDaQTDB3yPRWt40nLWwgpinWczQgMPut5LfC1qjcqAstsCvoDdSRQ3k/KhG0qAA
	 uKwh381MzrMecwvS4ryim9Nb0tVIpd8GxNHH6uHAM9C4JmHPJJyQEmJuBVb15Wygjb
	 hpHj6KahsYoLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36FBCFD352
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864655365.4075.10401726993148541627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045233ea540b893c0617f3c6c314746e14d9bb6c0b094bef1af137a207ef5105
Date: Fri, 11 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728646553
