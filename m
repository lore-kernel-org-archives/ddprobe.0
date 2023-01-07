Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5461112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8734CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673070687;
	bh=F0zojCXFX3jbgcPgNqXYwbQx32HYhmcseROvd6SlShA=;
	h=To:Subject:From:Date:From;
	b=Ao9MLdVhMvFHNwd6kPnDlIBlrc1CCMazFQkWKuIHnC0LAL23IIpTp5f83UG80jXCU
	 qFDNz+YyqTO0loR64dDf7z8VoYv0/jxUZt3HtLFiHISxbrBeqbPhGmPlknR9A9PO08
	 i0BJjzPYO/iuIVsBMZuROGHZJ6/BD+2rajmQLjuPlheeqdLoiO5SB48pskxBVtj8UF
	 tthL9yiCGKc0jlX0XSrlnxoDgldgUnJfNzFY+jan9xiD4t6dvilpnT4lMc4NpOfog9
	 oroJIBt0LKw6/2wpVyAdA7wjixnixADIUY8p0ckEL8oFSLvYEURRmiczEIImmSJPy5
	 N3KB7pqZvzYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69243C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307068741.24801.3883456872476019848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7902d8e4d12dffd853ff919ef5eeb3aeb60f8f26b6b1b0d269c1b52f4f54580b
Date: Sat, 07 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673070687
