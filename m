Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93277E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8836EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670551887;
	bh=ZN710hvcIlu7n3HC+3pDVEfpQFImAY6FbkPsx6xDPmY=;
	h=To:Subject:From:Date:From;
	b=AtrenM4TdknA6rvuH8DrvJbDPdNjxlwBUto3KuMUx4c2tQCz9/G0MjCLdbXL8ox/c
	 m0KL4rxyp93Tul8PtuUzbXifrOqQS3upOuYeuhdV4wcfkm647XIfk6LECF2qv4uFVV
	 Io48P8Akp3MC/HRatBzzr3nS38W0AUe1Ie398avxyL+lSqz/bA4C8n0vaRS1wsJwLm
	 Inuhs4Pm6yK+u3O0hpOrJkqXFs+Kl7INdkBAUJ2rl00JnGlOBWNBEAdi2YegEO0Jwe
	 kn4Od1pI/0KtT2pBLh7nZ0xkh/ylzRv0/nSIY5zVIPwT1CLC47EGqIwTY9SRuirZi8
	 beIh1Df1w2gUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 711D1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055188745.7734.8621133228159943892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d8ccef9e64bca708bcd1813e67b54c8b82039be1db7df32303805c7222be1a
Date: Fri, 09 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670551887
