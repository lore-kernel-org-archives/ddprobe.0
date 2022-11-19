Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0846630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F36C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668844254;
	bh=aazPT2IlBCJ3NmksXcKqX68TUxeNw6SQCo7Fj3t9Pq4=;
	h=To:Subject:From:Date:From;
	b=RmMS6x6BBVSAKozV7BrfsaqK28Fir5e4R14difbpUlANc7OgTuKponiiN7vvWghaP
	 LcmgutN1FZqfv+qabRvdcpDBOdscO3y8GtB/GqRB6Vt3QsWWpP8V8K2Ce/++2k1RP+
	 sgBvBrY6yBQGTr43qQmiC+qs9PPzT7JkijFJjFKIluabQuPxbBQyU82HuGD73AuM8T
	 pNLY/TRloUaJ5PIJCh8+ytVbyZ1/NCu/ZTsOlLtkDO5HKPGzFojwKS0HGdxd+sq0qa
	 LbdczFICG9CBgEsytdcx1z2o+0tpq53PAva925J4KkKP+tZbe+KaLAPvqxKaiEsgUR
	 Y21FkQ8jmIbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673FDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884425441.14801.3752796485483220882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74f0b387281b019e0bc2607327bd5f66f3328ef497eb35a501fdd5134023e8b
Date: Sat, 19 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668844254
