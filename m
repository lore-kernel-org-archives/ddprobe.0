Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1375C91
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A20C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665346853;
	bh=PKZdgCVjXa4d+e2RviTpincq2DAzoluYO5EsPJbam6k=;
	h=To:Subject:From:Date:From;
	b=uMwUAGDJD5FdVw2WHaYzzZz6aD6Y1bjb+PgGMOq7BHsw5bgitY+GWZZi/UnTUJiBD
	 hfLMchyxtyGMcsfsRNZdA8pPEcUf9tKLveJC+SRexHjUAnHDkuz23qr5HA9FI7kXkJ
	 meUe3ulnF+7dUm9WwGXZwFXVNo0+FyQigHk51GFrwRO//gXJf9gfRwuGWJEnkcx4NZ
	 WLbAdD1h+3SVcAzvQo8MrrOU6yx00/TmFZWrAEmQFDu381DLd/Ry+UY4WJZu69Bge8
	 RJ2hEmub4HUFvOMpDs54R7Nw0idAUviiO2N/7pV+L9Y5n3MVXQJdf245iiYhYtxoux
	 m0HaVzP0kBClg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576ADC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534685335.18696.14445687801448877353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5c12ecaaa743deb1bd4111c98020bae6fad39a227c3fce4eec32d5a45521f8
Date: Sun, 09 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665346853
