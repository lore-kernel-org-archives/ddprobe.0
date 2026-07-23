Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6A5304BA3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784770774; cv=none; b=UoH18ugfTeoW/258ynur2+4cjmYQi9XsU0391aZV5A6rDq8+SiJOABj+NxwljlyDdMsRXWTDX6arOHhxOySPddD01fXWIdCTfbuUFjFdb/6daL5uOMUxA8g4y9I3SELcsrDCHjcU4A7iO9fMAXJmrJZL1YW6ukWj3ro7UjGzlNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784770774; c=relaxed/simple;
	bh=BgInaaTfD9kEpoL2YwYj+zBIqz2/3TiOhGK3jypeDng=;
	h=To:Subject:From:Message-Id:Date; b=sMsTbQJSxRaHOqbYiLkrWPZvNQG+y8Pl9HD5zNap4HwE/frOSExgj5poeCaXI/A4ZXaCPOANPDv5zeWRLX957jvG+kfax8foRXORRFm6haVI1Ie9uzllLgHnldmor43qJyt6XuKv4N3Sp51zsAATlryTPwCL2uA4Xb5aub+ZK1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4O4PAcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4O4PAcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BF1C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784770773;
	bh=BgInaaTfD9kEpoL2YwYj+zBIqz2/3TiOhGK3jypeDng=;
	h=To:Subject:From:Date:From;
	b=n4O4PAcG3AjVeZ6Ode5xZT0QW3QH+pPWcwM8TzlxdwqLI5UPKo7TYwFmh2LrLjp/F
	 IqQjjVfQxSRUvbzNVmQvmXuxQH3BixpH2inA8fAcdrj//HvnQ3rxkcz4lGdNYvAcDx
	 OEsEDkeVS2dRvadyZZ3G7bNUGpPbotCHPo1ZuTWJWkPMU+Sf770mQ75VKJwMOlFpPy
	 w6KJEIJyi5MPxz5o+kYOKA8kQA/X21fEVob//fSpOTLWmtzJjoD7/3jVcKaWj7PHnc
	 +2MAcaci/bWiVsERkB9vm3zrgSccMpy7Y3POOoiT9/yPhaAyRp1He8GcjH92iyDN1L
	 7FO4wOtE5TycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B6AC4453D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477077372.11256.11466148186881439960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7562d31144d53f81a7991c2ba098e41e759661697fc19a99892becb49dc8f5
Date: Thu, 23 Jul 2026 01:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784770773
