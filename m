Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC86413790
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785832234; cv=none; b=RG+2XZt2ATtN7Nff8+gQeIbG5bw3aTJ8tHgqltaKT2R9bsJtQ32UBDoRPg3qohH+rKwGaLjpAGrrwD/icFpp9dUWRSrPn8cBo9Ok12Hv6wXEvw6rWCpUamLfKvab70nQXu5/5ajjRDs0BuHly+7vnGZyoekPn/JY7o44iWyRMWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785832234; c=relaxed/simple;
	bh=RHBaYk2bm7nr9r9DsTnyhUIxe49g945nVQZgxp+A7Ic=;
	h=To:Subject:From:Message-Id:Date; b=cTCawRF0zSAyIzTr+avridswywQQouq+sk0/Ln69LayVj4eEId+2NCGLlPNYzp1LAJBeClIQEiclu/lvPlRQd9N8EqrVg4Gm3P6OYAoU5fQgrdkyxELbjtSIPJfLHfEFU396NXC0kWaLTXbOioGjWcrDwDFY5LJPabhmuKP57QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZTuLgBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZTuLgBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE93AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785832233;
	bh=RHBaYk2bm7nr9r9DsTnyhUIxe49g945nVQZgxp+A7Ic=;
	h=To:Subject:From:Date:From;
	b=oZTuLgBs7cwlsloIAG7dhudACJJfQ2JK4cj7K0ni/SWwIH1lGjGIGrwW3NUXvIJyI
	 og2w1qLuhoTlpJXZD97tklrTMZLMI54M4bsXU/JeC+uaMC5iSiKWCvZe6Y6flvmJ07
	 sfj+focb8LAMFdRimiz1s4y/Ig3QnJf/T/R6gEXBZryr0F5BmLJuHCAnJEFHhgaVel
	 j6FwVndNzbSPy3F5lGlEz9CMiXHSg6wg/13gB+GILedOYJYvDsLpYpPwpUlXCz1l5g
	 JK8IQqqiT8ukkcGQTlYeU/NU7dOfLMeun4g68MU3Lm81GY1/oXDdtmz+ZzN11tU/Gv
	 3AQMKrXQ6tSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD686C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583223369.8133.9386223571444647708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fc1dd541031556b446377f86fdf2cdf0515273144692435b90c7c44244d8ba
Date: Tue, 04 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785832233
