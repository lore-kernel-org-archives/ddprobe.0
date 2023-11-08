Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273FB374FB
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhlqkkp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EAEC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699482496;
	bh=EASF2u2WGUPa1fqtT0JP+LtYDhMoaXmO2hD/cJWeokw=;
	h=To:Subject:From:Date:From;
	b=Xhlqkkp6Ig7d/AZj56ERFc/yCTW9csywjhP9R7s7uXHKPRfqAkxleRIy3xoWXIdSA
	 REAExhQy+G9QnNTnWHl4/czBut5NBYm8XNlKVxqJep7GM1vQWVvy8HaNuoZgRrcgJ5
	 eVmFkEDvYP/3UpY+lapO9y0QlSF0AodkTTm/m4HURszSzb+dQeyoEJ2bXl32zYMWMt
	 POCX35n7B1Mli3BHPeLunlnwtm3OfxAmOD7CqOItJU1mu2BfcH+oowD50CpLwPinYK
	 pxksuCAH5Xns2G/359yCanuP8mXLOt594OTV7ssElhMdCDb/Vv+M9xiglpTkTRNyp7
	 I6SUCg+lDmhkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65620C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169948249640.9192.7291044024085373231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a688720d8867a4b380fc3477baace6e0f24beb07700514d9df0ec21746a93c8d
Date: Wed, 08 Nov 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699482496
