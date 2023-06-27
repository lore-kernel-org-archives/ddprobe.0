Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E17046A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD07C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687904588;
	bh=O/W1X1li/Aau8dshi63ncAo0feerhCvOEWcRIylGWiU=;
	h=To:Subject:From:Date:From;
	b=IsUyjqrGrwdkeyx7mK91RNyFXTsrkNsxMALIIJYE9eioMWdAz4ase3RwBO4WrYD/Q
	 wY6f1J+FvX0UAAlHfydrOOhqPuuqDIIf91RIdrHYzcDCmTnXk2zY8RSe6PaWtFBgZc
	 DjnGlb4TnsLTz5G7ZrXzAL7KNDJrpJyC0BDlIUq6ycRGBeHmeN737Iz6rzK8YgmTwm
	 qdTKE8mC4HFucCNavlNsE4dfcp+YBXI23oaeIa5jaUndlM/Z3zsi/wVH0yMs4MjeTd
	 k//2MIis4k2dkQZ2WEK8dX1GmLxElceBkaFkhJ+aoVU6tlJABCuwY5SuM4gUhqelTW
	 ZMpPC5jvOgsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CC2EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790458872.24166.7444948769940354590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb94272f2f200e55661af643f4f09415fbb18e15585c998406c57fd53574351
Date: Tue, 27 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687904588
