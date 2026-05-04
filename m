Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2F23BD06
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777872454; cv=none; b=FDD9eraBcynugCBEkVF6phBsHNhfFlkyOLlMP6QVF45JUJOQwDFuZBdIXU5mQYNrJ3mAt+h9mGT6+fBvsx+jwAV3s73JlTr7vUH872YGH/X88U/tMy3T3xyGM1H2x3yWio/eXezY6tZVVZugI9XUEs/naPFge5P4SqPdqUo0pk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777872454; c=relaxed/simple;
	bh=vN/+uoyKWg90aBbR40ZJsCMIRQl2BjL5K9rz6KG/j7M=;
	h=To:Subject:From:Message-Id:Date; b=hs8VVWNKyqxqt/VFaLyQs271WazyhPDmqr0VqOqrRKgVLlbs9PCyz6EIdmsACTsbgtIl89mXQC9M1oBJ7jRH1XjY0xC7B1RJJv9Sc86/0cTd5iQ58/p42hnSGChsThM1YMe6PfrEVLjZzAePhwm9gYWyawwIx+dfR+/uOh2oBO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEb4FGlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEb4FGlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9B1C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777872453;
	bh=vN/+uoyKWg90aBbR40ZJsCMIRQl2BjL5K9rz6KG/j7M=;
	h=To:Subject:From:Date:From;
	b=WEb4FGlYW02nM0/AfXZ50UrQU0G9X9hMxd5By6gx8LubDeqDSxu/eRN8C+FCz5vu/
	 WdYivUyn59CJ0N8vl0UoEWliyjBP8k+M8bx8uKP16gyh9VBWUUtxvaRSUlbV7sRz5d
	 +6VlFeKHu/2UfwORvoXTW7dXcMW7yq/+iKK/YRtw2JLI/zMs9+Rd/FITKOmj8+FFbf
	 nLAkT8m3Rp9H9vG1LDVkV03S5v0VGwpBk5AnZaHWrCbg/TIlIbl+5cWN66+OIzRfoW
	 HC843GeAaoZNco0vx3tdzwI4HyOVsvQMADwma+EgemWrIxEompyn22BoXZwyNjDQtL
	 NJ6dBkcV0J3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE254CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787245368.14367.4979119412947359075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c744346729dfce5ec52450eb48842f7cc9b1c0bc55fbabc34dea31ca9170f68c
Date: Mon, 04 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777872453
