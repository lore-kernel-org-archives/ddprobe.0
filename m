Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE902745C
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755998394; cv=none; b=P1Zm3FuRUn8P3ZeICXHWqD9CkBoxpjaxYD1+HutMICW3MBcraRTQDDaW83TrqqxVOXbJrt0G3VQDTHjICnlKZmjWyBwPNX48u07fo4EbGpf87qrD1HJvTAYYD15caeC1ROzNUz0qHD5EAJXIBSc6N6AW/OOEfbf4dIxzQBk52Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755998394; c=relaxed/simple;
	bh=C7ZnaxwS6zqtNVsNxLiO99oUKAP31ZJ5H3Yyj2YHoqs=;
	h=To:Subject:From:Message-Id:Date; b=jUEh3Rjz43t9q4pRsNWEwFEAF2YmJDG1/hNDjvlwgFGXDnRicvus9sxuAuRarRGKsBRP90f1qEgZsXMdP0btWnBcxjuXvY+5JR1Bv0QgXIOo95ACl5rer+R8pTpnwQdhCDnZKaR+xBWNHzNNOKJ7MQsHfU/P2rwag0DVE5UqM5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClfY+0Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClfY+0Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB10C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755998393;
	bh=C7ZnaxwS6zqtNVsNxLiO99oUKAP31ZJ5H3Yyj2YHoqs=;
	h=To:Subject:From:Date:From;
	b=ClfY+0Ic5xT8VGji+1s0UFChc7JST1pnulETL/ubn32i7yhMTKvJnK/cTQPJSKRw9
	 InKg1X91pgn8pV7NUc8K/q5EDTGtU+MDGtQBOG0ordADmNGdoh5ipGTIt+Bg4NTVVd
	 PjXieo1T3WVUnSDuL7RPo054LA+T6f0aSlW5gIAOwwmoLPU1YH8eK0i/N5ZFqWAnm0
	 Qptv6gHDTGDGY3NlAYx0HvFgQp27M5GTV5U+JyUz3bLeC3TOnpt/6oCuFYUzmnoFh0
	 jr5nmvlsGE0kQa738Etb3jla78wjIA1dyTXkCv+HKfr6InGyVgIUioShZfvq0zckK/
	 qwq/z4LvvVNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F750CA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599839358.7575.11742411626907267687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832e240609720e1aac4583df166d021fe46bf6f5037b232a81bafc8279e90791
Date: Sun, 24 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755998393
