Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F34134BD
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C557AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695029708;
	bh=lq9fenbB3b9mCXF1ONQS9HvQATeqwYVQHSMrDAa19w8=;
	h=To:Subject:From:Date:From;
	b=XbN8tk+GudeOgNpbEagSRi0gQJ33GtKsVXmB24m91nLiCDA6UcTZOo2Qe8Kc4VOup
	 gqsh1U86qGjkewEYQ8W7xS4dBz51efxEcUMNARR/m8Y2iUGl11nIhjgSBSJjbBKNRy
	 w+p1x1deWVzWrxlOd10oOlp3jZw8yc1rWbB0teNNpCrgmxFQWA/1i08zNIB3Uipoqf
	 ji5fp3smKiPy4Rj9alV17JWAdlpmzhsbP0LkeZhOeJj76oKRZbeU2PrnpHi+5BSQdy
	 ILHkwzkO11E1X7tb1XEsz8MGX53+4hgDjEHJt6M3nTkhZiUZ6hI3TfSA9UdzPgn1mP
	 72ndeo810Ac1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3D6C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169502970868.29913.8192596501760009249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0eaaf3b9ea7fa9ac07a9960c7c437f977dd4fbdab3b74e9f023dcc5e4bf16c
Date: Mon, 18 Sep 2023 09:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695029708
