Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28437ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDBCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665829253;
	bh=fxeUJJETz9vJPjGTSyBn5GyIbalRXrJ1yXJ+sXMqoFo=;
	h=To:Subject:From:Date:From;
	b=krXrhl5nzuaZlOUA1+hbu7UxruBDRqtmQ5CETPLE+c7qVeX/6PZbez1w7GeUtx3R6
	 93LXFCeIQEJpsrcaL1CYe0pCoLlFjMzquTmR7I2Y+HxHUjIKpokdY8VFj57u7MGYHV
	 OMyeKCsx9M5iwf61LPayuFnaRzszs1CP+k/cicM1wmE8Q0hj3pt8GQ8ATTwQRujvhb
	 ke2ltptT873D6fGic4XaYAZipsgRj5/JF6g8gOne9AjUIfjeUjPEhqFlMGbZHQ+bq/
	 psmH8kxN6zv4/5R4/5atEtKJXhZqF/QAm6o3V1vVyFzwEsRhW9HgWAU7qA+kkWjkvE
	 Ker/Sz3Nu7CeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FA0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582925334.4952.6927647874956071713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93a757196a42dc048b1741265a1cfb1bbceebf66d202a7f53f17b7ddc5a1a8b
Date: Sat, 15 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665829253
