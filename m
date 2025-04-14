Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393282749F4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744641594; cv=none; b=ullij3ByQgez9pzLPzkzBOPfsn5N/1QO07EWEIonQCNVd4sNbRGloewYiPzkcF3Xy2Z4cgTCAHnPrHc6HSqY5xvXEse4lTkEaV8FPqFawdDDdWj06GSuGDBHcP444rcphnApxSH5DSc8n/Nu7XjFF+jd8lJkaHPKA++mfY5afhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744641594; c=relaxed/simple;
	bh=nEBsHXgobwJhZgHVe21joEdAfWyNLpOb1Vv4gEra5qA=;
	h=To:Subject:From:Message-Id:Date; b=p6xyyWXUb+2cVBHW4bHAn8rAEN1heR4HthDYbWsp5oEW/cVJtVt+5rOAjAhYpeeRRTq4cCcTnWFJy4wMg+AxS3Fwx7lcyJNk2Zg4TijV20KXnqLyRCv1rTT7NyiniC6fCB7+qHpnQxguFOhknrYOZK4UXJYqQfp+G/J2NVRZ4Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0yRIHwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0yRIHwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C74C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744641593;
	bh=nEBsHXgobwJhZgHVe21joEdAfWyNLpOb1Vv4gEra5qA=;
	h=To:Subject:From:Date:From;
	b=Z0yRIHwxHBwSiBdzOsd8t6EOF+gmB8+OHSZrk17e7DZHOlhhqvSKwBtQWnk0Mi0OU
	 mKopDH148h3x7YPIvts8R8G/A0OlbrcirvVuQ6t1heQoGvNIW3spz/SLcaPjS2pYYc
	 6CK7dZZgAagvtEM6RmZHqVNHDQkc+XRJiBLQdDeJvxVy4uq8IA9vSs8wnnpsqgaV8r
	 D3cas3TVoNijEQNakZfXhHGUFpzWLz5XIVSp/EcXlDYhBRValwHH2CbOt5cR8bfRsz
	 GSGXN05huQTETWWiZarvbYI4TTbJm3Rp38ii3N7/N2DwM/VvRl08UCtQZMOd8R1FtC
	 6RsLislACf1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98696C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464159361.12784.15589613094914725369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af424531d89ab801949c1af88269bda40abe1dec16adce3e10240290fcedb2cc
Date: Mon, 14 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744641593
