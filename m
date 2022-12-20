Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10EE139B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78868C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671516687;
	bh=r7HNR8u7rvlbZmQAnf70pIrbC3WDGm961kQEgpaJHuw=;
	h=To:Subject:From:Date:From;
	b=XmOe/7fVxAgfkgS7u6fJ1xSOvT5yvUcTvalUReVCLwPzi58ZtP9xPS2ZxAs7M/fmb
	 sJrpNy61nmBxmHEb5ULuNMotDg00vgH6wHzFWqa7ZlOHgCV8zyQfEBKQ8Eb7CdtfpE
	 cCCTU6zmyMAy1TcD+5JuFyKTVnwfcvDkKv8jSD4ElPDSqy6K8E/tts/M4ZX68DVmex
	 8yToiZDh/njl8bmWE+4Y+LnQjOS7qXHqYlKZYFx1oeeoHr+E+rVD6xrFmn5tKh6oA8
	 2pXWTuxQZ/Y5aV51vCA5rlCjStUhxrQ54r3PJmSSWvT2UxabWqUzFXBfymiELmEaH+
	 1302DHfJHhl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF91C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151668738.23917.9399116412079092189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92ecb3c789369d0f2504e8b863e701f225b5dc4d066208bbc2131c6311b8255
Date: Tue, 20 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671516687
