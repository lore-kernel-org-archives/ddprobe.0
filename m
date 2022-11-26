Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A1F23A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828EBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669483254;
	bh=kf2ImFFFczyBxq/nuglNcy6N5v8ZBeC9Z1euSwhw/yQ=;
	h=To:Subject:From:Date:From;
	b=XaUll4Ja5JfrYxweO96A1d88rPTaM4F3Nzz3vzbzvI4PoJbiqukqlakNe+IjkSTBf
	 pv13qnbvTkJiZniTJ3MNQK8ZQ8zuGtauTHNLa9IW5o5NaRHNAv2xtXJAtsuIGiaGwf
	 Y2ey5rr48hzFbnpiggxP1UvSaLEn9A1exeuLAAD6Qz5hbdZml9USOpfilHgtB4ccwP
	 EM431lPkNXVvc6E9W91a0JOV46WZpzk1e04oZ+27VtCL8a8ehY7Hh/qf6e6ISwa/nn
	 b0ePTuGJ3LQ0/MGYUptzTvKmIXxvtv7r8NzC/ytE92kGAkAwBkhZkE8YPklxZn1L3p
	 kpGKY9WAjViYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63531C46467
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948325439.15475.3734196956567164468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6f62f69b470951209e31b13f99be1722db4866bd93fb2c21f0bcd9e64ef820
Date: Sat, 26 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669483254
