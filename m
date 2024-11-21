Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C31BE23C
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732215954; cv=none; b=u5a3W2IrCSQrhcV5RMX5yeOvr49YuHRVBPNVnbu6R+VIIcMvc5PX4etV+fXfbXUHHhoIiOnJZEMr1BbU6yVSxPNf/jl/q5VQ+Hh0mEXB+n06/V5otf3LTuRf0tBozGfi5vZKtyURQHqUZAw0+xCSPDwqKocV2q8K1ewDiZu7QP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732215954; c=relaxed/simple;
	bh=g9m9PHGSxAjP6ZJSNADROREqhg/MCWP/IHssDdgsSas=;
	h=To:Subject:From:Message-Id:Date; b=ifUY5/Em5v6nMKPHT1M14SaiM/AIPHM3OZlnJta9EeSs20LbDIDxBEqeqggGv7un9AxH26xzUjX0WkPi79TlrxPcWj4ChAEmijBOEWay57LZTvvVEnUN44M/ek0+85EpQerdlCXeQesWzoRyrPdyZ4ueVfkQ6P6DwXfVlL2FihA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDXrv1vD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDXrv1vD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ADDC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732215953;
	bh=g9m9PHGSxAjP6ZJSNADROREqhg/MCWP/IHssDdgsSas=;
	h=To:Subject:From:Date:From;
	b=mDXrv1vDgJD8yjnm4mFDWTers0r74CuFOxzwoSIlr59KwTh2k/46M/e6JF7EivlkN
	 DPPrGJTzphQoy+BI4XwRSrnm96w7SnjONGXfV6iPhqUGe3PZI5rbrzy8pj0Mb7TFQZ
	 /3WWRK4gCx5b0hzV0Ef467YPXFWuef31XM64Ytqi9aHyfUXIhaTYt+2lp28g09N6oq
	 x/eBRyoR6Bzi3QyQXucmJIjMK99vIZVSQvbPj6Hla1PHbTplr/zXiY/5VMBfxXl/hP
	 PgfrGsi/eCpsEZLjBOj8W839XpGZGS6tITMxZz3gNVeGPFyzDLo9G6+qVG15Je707+
	 h0hMpQ/R9BhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3A6E64006
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221595363.8554.2611094637510578580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891ec73d97076fc13f00cec94000955d2382d76629617a63673c687256f88297
Date: Thu, 21 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732215953
