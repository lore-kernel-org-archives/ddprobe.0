Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6437E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E35C433F0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672492287;
	bh=zW/VEbtAiXcigMpRpkCkCC4xG6rI30aELKGujr5fQJQ=;
	h=To:Subject:From:Date:From;
	b=Zn2d7+GBMcyK0HHX/eFtlRART+Hr3Rh7Iz5VlZWryrB3BaRgPDPwOsE5fXoTXnkRE
	 /705g2lI/Lx8CprEIoXPBYNI5TEyzViJHPDip1a8yjzAmuw5/MFUACKUhD4I2V1lmv
	 VpM3xUjloRYC2ahKVvUqfegVmM0j3HL6oGiap9KlKs1OUbBurcmKNMwQX1fto5L2/J
	 eTO3Kzj6IOdRkNjzQQBxn9NBUG79FvRLKUudNApXUGqkjdTQfLp0KwhA1ZRcNeOldP
	 Ggw1PorpkN8enN+x+fISrCM/ECL0AmJBjkXpBpn/ItIyWnO7a4b4UZANxGio+T8p5Q
	 WgoS2BvedoTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79FFAC3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167249228749.14420.7285721815999620356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f1578d6ec9bfc7da4b719468140ae7952069e139231ae755792fea3bccde80
Date: Sat, 31 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672492287
