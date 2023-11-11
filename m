Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F0E13FFA
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmJrJS+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98EEFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699703296;
	bh=e4L9LPwRBCi/h+N6LRc2qgql2kMdYOeqzlLF0aNifU0=;
	h=To:Subject:From:Date:From;
	b=nmJrJS+8V3l0X0aNt39N2MxRagaSzgPE9HXhhe6ZnnPFZEU8NKNQqGMgBVyLYtKYz
	 Emy9nwNvWu76tvfoq2IIi2Aja0NBgfdzTZalXA84nwEoTDZfMgdZ+x/X0Nk1D8Nc9m
	 iO5ia5whv1T8C2ihmw1eq8E/2yB7V9RrFVhH6WRbfZngvO3kpA/IarGnOQAoJ/Gh2V
	 KLYYbOQ7ZrKKA5uEcM/TIqaPE7+jL1m7aN0SQMI9Slim4zVhs302dZxceVThZasA/j
	 VHlb9lSUeIwBPlXkNZtUUsAg5RxfwxM+CNv5nYFhGXQScG3VYG0HHaU2jezVErRzBM
	 wR/9WGK3c5Jrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7729BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970329645.21532.12412732700225688502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de12784d3d9f26ccd1724aeb788465af772d5063b1dbfbae74279fb69b4fd7aa
Date: Sat, 11 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699703296
