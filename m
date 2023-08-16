Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1221A156C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88B5C433C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692198788;
	bh=WXAAC57EqM0VL2+6wMGZaOhWImKNVqIiERHYrBeH9ts=;
	h=To:Subject:From:Date:From;
	b=IdYL8QPm1RlMe5jAkWcJUU3k4ISDamlNPTkwrS2lAuECNEyIgDTMN3Xc0NY+OP/aD
	 XAkY7Y60rysT5d2biiZDkkxFaOKNmRcBAF8y/UxIj2fM1dF/0oBMU9UFISnLYwqTk7
	 zo5e0JaGoH6qmGfTD1kAVakyRxhVU/+RYAEmdh3VJt/sELDTMsLdWEhLE5+jV3xQJd
	 J1p1X+/R4oZpWQbfOIzh2jXsHiUlK2c6GfzMpiSVTPxYzLLStnXy0QWy/033udzZEp
	 Le/BH+NQ5IWMdJMJX3g9M3j9EPpQnjgFWMPHK9vLfHw9wk0dZ9Judzp+kTexmL/BPq
	 MyjB9fY28kLvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1059C04E69
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169219878871.15214.9122878915011366273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb063ff5dd256b7227bcf0d1a69ac4210ad111cd6be29e768630342db2a5274
Date: Wed, 16 Aug 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692198788
