Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C0317E6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEC7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664032853;
	bh=UMlHCpELhIub3p/2fvsfhR5a2HqsK6CGAvcR97ZIXHk=;
	h=To:Subject:From:Date:From;
	b=s7kVVFJysJ3woAaaIHCHVdO0eVXrXD/znKvG7Fp+PCIHqLWyFk+R1w7RLO63bu4Zi
	 BEhsg9sRICeb/7WMI0+l2YrbnfcHhjWLgs5+fi4xE8dXVsc1XH+/LiggVA3952n2do
	 MVV43ta7mQpDYi8GOerZ13nbxoZOURQHzTZ/zwfmXdyiBFpvaHVSxdoNMly/YhJi/W
	 +PhzcpdSGvO43VAErJ0IZYYMaJ+U/ZlYw8Wak6s5owWnS2AYy+L87Fl7yeSiZC2Klz
	 24DsgOf4GaGeS/m4o7TmYE9qsBliQ+yW3skpDR4NfJUyNGynd49d6onPZmbcgAZZDf
	 6KlM6bHE2Fgcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54883C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403285333.10318.16989664326358341037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba33aded931cc3590a0247f80acfb1524ce1d953536be810d2b320aca418e26
Date: Sat, 24 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664032853
