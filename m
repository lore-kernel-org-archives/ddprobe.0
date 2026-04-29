Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E5382289
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777481854; cv=none; b=CQapF7ABXkKgC4l58Fze6eo8R3muUJ6ibuGx0cQQcp/Bjzt5CaGZ91TxprehSQFsj1ltSUXhToluJQB+h3Upjnc3f986R0R+xDh1sis6VRnnOInEOLIRAsJDddeaUqyr1WIbgv99G3Wz0OXBNIfNjE/uahNP1gTAk5135cooTSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777481854; c=relaxed/simple;
	bh=hn9INKGB/3CrOADOcdWbfTJf0QUYMtr3mLibuE1Wvf8=;
	h=To:Subject:From:Message-Id:Date; b=lnFxl+4XkZfvvt8PbnMOvoIAz8unoN6AeuTPkAvT9wzHHkpUNijzxO3SoFl1j6miEBWK3mGPhYabBgJX2+GyaLFumG4AChgGsRtbcOjYouutWV1zVoHgL7PwX5SD8VxCVfG0vJUZuDkBr66k57Jgs3deg45hoyUqbQlwxTmjRdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiXD6Yg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiXD6Yg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777481853;
	bh=hn9INKGB/3CrOADOcdWbfTJf0QUYMtr3mLibuE1Wvf8=;
	h=To:Subject:From:Date:From;
	b=TiXD6Yg/o4a0GwwfBHJrquxIhK+wQ/d150SI3Ys1OcrpUS+9mrCLMbG8e3epN9UhX
	 EVRWKJOZicF7EC25N5k8gPtkE+A9xLR5lfeAfTmAOxd23KGxhlCEyoCMSArJOVI6S1
	 PvpG/Uol9vvY3dYg/eLrTnIw1RwshzT0k1mJyGNrDCfJP8Mjz0fBwpslE+X03JmvZf
	 zNuMMrU8aiE8WIWLHzEYnP8DfKn5Vt2sQUM3cIgUQn5mGPFBm3wPAYeOhjb+hqlX6U
	 6lr1XJZbl3+4+XZvEmn8FQhuSKP27VmXFX20ezjl4WV1tX2DpYH4+AX1W0FOJGpUBw
	 lynIKYK5tOTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA128FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748185368.19527.4993113338517802982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f48435c55a2496eb7960a83cbf458fb009833022f4e1178012b19d92bd2438
Date: Wed, 29 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777481853
