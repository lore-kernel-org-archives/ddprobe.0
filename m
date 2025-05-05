Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CCC29B0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746425994; cv=none; b=d2sICwhkPEnxrgei8FSUgP8PCvpgbBcT6yOAIHpPkZaWK3/LNLifaAG2P+AoIfML/KaWKy7mM8aN8AigGte/DymfeiOkrvHSG8tzD5h2wUdFEvolEnejQukgyuhZTpO990zR49TyaOuib0v5hOWqUZalZBkpi5D+NG+cAsL3nxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746425994; c=relaxed/simple;
	bh=Us/zmp4dN3pIbXIYVWXzSchp02nxkXaXWxxLN6tYA28=;
	h=To:Subject:From:Message-Id:Date; b=qs1Zb3hlR9PvIRh5nZ5nBiXxJzxWXR5JuPHuWJq2edfx/Otem2QxWsE65cl+ItXinmbW6PB0b5Sve5hlRFP6g4DNN/AHf6ctGRyuyJX3XcmSOroOdvOcng/zTUwcAIgV2jwgKTxsw/Vt6W7l8jypRIAsdFUkvSgtxFRd2nKE3Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8Jm1ybM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8Jm1ybM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A42C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746425993;
	bh=Us/zmp4dN3pIbXIYVWXzSchp02nxkXaXWxxLN6tYA28=;
	h=To:Subject:From:Date:From;
	b=d8Jm1ybMInwjh9Oe3ZOV13PRUU4GdHnNdMpEExmgHX4BxBxxzfmmyfFKTjSnLHwON
	 b6dv02Fb9+LiS5jpH4Su+BgZXbxCHqo/bT7NYoLGy9JoNhjJAZllVHHf30qiF5tNaT
	 h8bR6o5hr0PEwHb10ODdbVgFhmDbfy1Pg+uAKQsZBpNvoylxhehuM3iRzQGHo1Ftef
	 Aiv9LXY3OBXJdEeASPRgpNL13PuZ8yPrlQm4ElTDatVNvHNaWlRzpgZb4b1jxo7Xgf
	 FSUf0Vu/qChcr8tJX4+D4URvPEExkpANuwlUjnd2exKhTgOCOJ6sjWv/3rQ4Q7weDZ
	 qx+5y3eo0X90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C78C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642599357.25479.10743823317710664361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b87c4ff1ef752348cc90a577bab431955dadb77afea1fd7ef47774d23b307f
Date: Mon, 05 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746425993
