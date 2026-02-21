Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E0E2FE593
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771667094; cv=none; b=s8clwVWsrDcMfLMliBkRHXtPphRzeqSUU/3bhiA+koRocvTDzgOTljolJKkJ1yE8fM4uD98NBWvOmU4qW1/K76PFhFGEN6Y31fFSp/d88opAwG4FGjpAscQEtXoE4Q2u74OMYmzRaa/Py76FDa+riFunHuSh6ZDa5NE4gC8tjPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771667094; c=relaxed/simple;
	bh=eMKlv7vR++2HzJxeyTClscsNAlcPu0QmkQ1mY5Yug88=;
	h=To:Subject:From:Message-Id:Date; b=X5jfkxk0yTii63bMsVVJDbmv9oc6BTpGWFt0KzbyQG+RminWIywkJ7GCB0L1BiyuUs4KifO9i+5ug9oyLzdw362ONt75EI2oRcIANhsBStBPDpHwDvGtPj3UU69Md7rK0rBH8PXRKwL8rrP7jT7VyfwLL/ciOWgZyPxcOVzKrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRuQgHAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRuQgHAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE37C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771667093;
	bh=eMKlv7vR++2HzJxeyTClscsNAlcPu0QmkQ1mY5Yug88=;
	h=To:Subject:From:Date:From;
	b=NRuQgHAaD4jNVUJN+EXJKl27KyqhGXZ+LQineS6xOFDPtxD4JE0SRMnW38jiy3Pwd
	 xVES1A7zLsoN9xtoXSDXrrpHEFT/uHEetdZwLk4UOlwrTsMa1sKuBpgMImp2A1Vdp9
	 E6l3m6a547SBboOoAteAgyGANLCHbLS2bbZV/QPJv6THE5QAxaG8Mu/YuLX3FRKjsS
	 a55Bjab41kmWeN+ZNgPBrJjnJMsWLvVqN94VzhlvRJnoWrAFQ83D9ge8sS5Ye1XxZl
	 3OpzrcTcU/xQBVcLMDcspqvL0d0MnmBPF6z+10xcpp9IRu7NL1hAOmeJ2x12wP+Uxy
	 HEXPsQaIbFRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969A1C61DDE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166709360.30951.9661263884179983297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb4a968746b73e0f8e20ecdb150213b019c378499e4708f50ee30d64ec0264d
Date: Sat, 21 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771667093
