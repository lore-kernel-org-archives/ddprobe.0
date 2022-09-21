Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A4F2F5D
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67BEFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663760453;
	bh=7rKNZzk84rjm0afSmFJCE/I/oSiOd7Gdsh1Sb2RFtYY=;
	h=To:Subject:From:Date:From;
	b=t+2Zk7GJ+xipfyZpoQ6ItsHKdqZ/qpYw5xqQmmWACigfCRtzFXnIss0Vdd99/vrY5
	 LYDBteSc05WDXBlSffe9YdBMS3yaIYlCjy7qxwmGXMV8Pl/Yo3zo78OXJvM4bnSrsk
	 NyECKjPOubjuDJ3gbPej4A2Wici2L9xrhwXbyoNxvKugrWFbQ2IdBo1OCnkgs3Z2gQ
	 7vTrerbQXXqt4X4NI0huJkHVeSBBS7aI9jkKv7ug1ZVd/LK6C6scm02U+vVrNLniX3
	 PTpoaik8te+/OwruCqwKH+of3GmCapwfH1i84sO9xz3exdppvvTlRhyPuj9L1UuTMS
	 cVLivSFdQRBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AEEECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376045333.25920.1810386810319049889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ec72e4286bd62f4dbd23210dca9a77439534e64d37b7fee435cd85ca10b14a
Date: Wed, 21 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663760453
