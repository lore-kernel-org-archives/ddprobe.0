Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222992BF007
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759998594; cv=none; b=Z6f9s4Gt1r1ZdbraYCUXvBKD5Ce/6lweMCNGnSjkJfKtsJLJORUMDd16C5jevi6bp9OT7I6YasX8lbFwpwp4h4Fj1YIi1N0rakV/Wcy8ECClPzYJ5dxGaWpJfc3EfNgOIbMhPOrG/1wCgrDTFHKEh0yVBFSrDkKrP9XWdFcNZbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759998594; c=relaxed/simple;
	bh=SZqsf7H7ldLPWyREolS1JqPBiSR9y3V6+Tpa0JYhSlw=;
	h=To:Subject:From:Message-Id:Date; b=Njywr/bAquJLeLpguK6SGMSGLxHKKm2WYKx6nbb5DuajOMu6/eeV4pB9XxEYwpIUmRzMkSdumnmEfD1fUYDQK4I7kNe16ljl11n8YWb+5FMkS7h+F0Vtro4YJtCQL+QreRE5Me6Tsyxl9yR7JL8Kf9qxpV1Gxuw1213Q78kOOLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hu/0Xybs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hu/0Xybs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2131C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759998593;
	bh=SZqsf7H7ldLPWyREolS1JqPBiSR9y3V6+Tpa0JYhSlw=;
	h=To:Subject:From:Date:From;
	b=Hu/0XybsPpm5WkBQaLjseAt6/1ndn4SoMp0njwXPrcryhIzsT8pxosdBkNtavnyLo
	 gXvMDH/wkQJXc7kW8PwrOtG7V93G+b7sEL8JuFb0oOz4EZzBLc10QRygefd6INeNGi
	 VxioMYdZJKm4jozG0pReCBrSN+X48TpETBybIrgqIgCmUJCVRWKtI0YzDP5m1m/Haz
	 SPVfnU7siEBn2Iy/QfKI4KuDsjTRhIcfkUs1aC3tlcZ9oEwTb8RaNRvaH5ITkhla42
	 aL7gJ78YcvzYCEsGGoCz+kQbVFTAO+5XTW4EpWTlmMcu7BO0ECVc7avO9BXlTHJNHE
	 7rAlMt2NJvZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E23CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999859358.28466.17019367364067546232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546537bd407f13d3ba669bdd6013641be6e608b930e005c6ee72fb13907d11b3
Date: Thu, 09 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759998593
