Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA75D198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFB1C433F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674182487;
	bh=k4JXyhr/4ogmmGnXySdghCfMLpPvUF/b+vHF3zlbtyE=;
	h=To:Subject:From:Date:From;
	b=Xgxk0yXZFqTOeaYlSgRn8cy2aj5t8o+mjUC3+vf7SMorqItpvPsx3q4YTme3Kt6PT
	 Hyr/fbGvXe4qoAnvSWsP6goJoOmmR75zxJpaLZ6l4n15SJ2USUc/EkPiWACynJPNO3
	 YToPLvYVVMwennNeZEvUvdQNuw8FaQhVLGaVGxxt7c9TSylZrfDrL7VJIjk8fhq/Dy
	 soo7Kq1lymK12aBeddYXSme9c7p72TJCZv6wC8Y+Igci/thIYpyy74IOO289IeAEh5
	 d9IKEaxsm7vQuCpOOqLR5pqu1LyF+b+6SDlocZXDUMoXBZSzH4ad5ZdqbMQs+O2pkc
	 WIDJiVjD627Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C86C46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418248740.32133.2127859308687468220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbbe4a229e9791661c0bf51f92017972666cc48c854a6b5e8a96bb672190e9c
Date: Fri, 20 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674182487
