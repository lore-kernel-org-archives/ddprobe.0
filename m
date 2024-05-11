Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703122B9A9
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715418743; cv=none; b=mn18/kDYFcUqmIPT3cN5GxQGjWkSHvqo4hR9bwix8c5wYZboTp/kb3PMOl9ebScjFX0xt+09z5MTO6Ed8eUW1oSLPqTMIbXY25bntbvMT/88lpufNPQ5nim8ceeIfhWBdHIDIddd7IyYAa5/ji+I+eWAhW4HV5FxFFMRcy0OlmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715418743; c=relaxed/simple;
	bh=ppY8xj1kL5LfAxKGz81Y1Cy8FKuN/1EQ3lUhAyAXCaQ=;
	h=To:Subject:From:Message-Id:Date; b=bjQ5uF4Ea3gTSZgMCqpX+TYuI9RPopw7Mvy/SZj+iVZUBU+1j0lH7q4GbImSMPUoBfO0giXl2QRCeW2fAZgL2GMXiJq2j3LHsXmEo8iJpiwhUFJcvO9+Ce+aFGzWluQxJWiZkaVe6r/nP0GIQW2CK8os3WIwD9Sbmnqdy4aCqPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hm87vOl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hm87vOl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E84CDC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715418742;
	bh=ppY8xj1kL5LfAxKGz81Y1Cy8FKuN/1EQ3lUhAyAXCaQ=;
	h=To:Subject:From:Date:From;
	b=Hm87vOl7A2gFDHwObzt9FO6DHhvQMnwfC9d0fNYllAFnIR0vTifRFsYj6DNC9rKLv
	 yxQvrnyajkGen6/hP8hFvOvnjbTxizlLqb8ySys9kMlG+1KEX7mqinGl8ANMDrmvWD
	 6wwA+HUm9UbnSG6X43EhgSoB0kBt1KW01QHxArvCBdPanv2ohueGi2sKbPexCTlnY2
	 YXRhPUANmuHP+TtBJJcf07EhIV4y0RLzCzS+uLgNhvUws2GFgCa+RqvLvsDPNon2ja
	 eoGONEJ/V4wAY8xWYLwgNOwg+9C75xtvtwpyAFql3xmrLUfUmoh/L3D6VM8ofYumlL
	 zF3WxztxrlyFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E6FC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541874283.8426.7209345085637686190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2c314303455d2fb6641b8daab32b07dfdba58ffb54d3a39a0c746dc127dac4
Date: Sat, 11 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715418742
