Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507D513062
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC91FC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687891988;
	bh=SYX4PQqlIIfi9XwxYgPP/9Q0obVpdJ2xCBlCxzmBnbU=;
	h=To:Subject:From:Date:From;
	b=blJjBMFBalSLYJYb3BSGOJn5tg9GogTycyUPfXPgt2BfHsjCS5scYct6lPrqNvFP6
	 kdzc1YE/BNspcYWUFSrNl2rYMYC2HwC/vvyTWzexkMOtMtzzvYGIclHH8bOaVHtYEr
	 jqvykpLDnmrPPSutPudvHUgiNUaDDNrQnfv5no13izyEEsXCdZsX+UY6r/jezZb1Ol
	 rnE+UqUqstqie3FTyrdtgccHq/qKrC741ClcRnuDBhe1KfqLqvryx+6J3hkxa/+DqZ
	 /Bit0wzOmmIBxbpXR5mJ6EIzVB5546xGuANubNei15taEqGORiZm7K7Jmme4JWtrwW
	 kN6Yzl8UmyR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00CAEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789198871.6062.7095753738239173716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9a6d765d22995c1a10233edf8a7cf80b20ac865eb613c88d8cc082c16bacbf
Date: Tue, 27 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687891988
