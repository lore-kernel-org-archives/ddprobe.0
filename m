Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60658146D4A
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715586743; cv=none; b=c3BRwtqxLN6e+8OZ1BEj/x0LXZ8zBoRGjNVPHpRR/XmG6kYdsvOpPvvs3dNFRXbat5UI2QlHRoXlQ8v2G1eHGYWvCkIB8ALNBz9RR4qt/TDjNRSZlRthrDOw4VYpAbJBMvwaP2ZXlZOTD2RgvE9q2Bc2MC+AQSUJGepomIarBG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715586743; c=relaxed/simple;
	bh=CHxOvP7cmP3NAHHryKamgcf+y3Ru/Qrb2zQT3h+N4EM=;
	h=To:Subject:From:Message-Id:Date; b=JCSHZB9yRXUy3ZnXBqI40d5RlrkhLMeu0/SRRtbf4dUo+nF/Pxoor9tgfp57zpfl8IkZt6KTeFbGkK9Yo8rXPLlyta+9hR/FweMZiblLThp6oP91JlLM2r+kK3xe0k6R/pM5jY8Fe/ZnPtbrqqyGZ2u005cYT9uvKfmtEmR8inA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYPU3ieT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYPU3ieT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6F2C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715586742;
	bh=CHxOvP7cmP3NAHHryKamgcf+y3Ru/Qrb2zQT3h+N4EM=;
	h=To:Subject:From:Date:From;
	b=YYPU3ieT6tCG+hD7A2o/4kfyoC63CKqMzb4gxi12RUVl4fcvRQJTADkekhaZKMbzo
	 0Z33SvC7vybD8N/VQJ6J0qd/0yHeiSB3D0gjEg5uCUAM0vgSmOwSOyh5C6HVY7DtuP
	 Y+W58jvphMRAyY9Zqm3tgF6XdCPPgILH6tbPeShbtE01KxfSX7rmWUX47Ojg/Ybmu6
	 BCPAR4e/Qoxbf7g8eisQ9LGUWcI9an/csiLEDePNpJAloqGMSQDCGEYhGQX8o8mVTT
	 AbUm/wWJ/NjkTof4boAG6LLaO5qZXNAPyZOplZKgLa/hTzBEIy9qo6q2498ohrf5QW
	 C4FJQS9LnOeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FB9C25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558674279.6054.13095010396218343422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a797dd9f3cc996501d44af144925851a5d246f06f17bf0784c53071250789820
Date: Mon, 13 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715586742
