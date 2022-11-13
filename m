Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A3F1374
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672F2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668348054;
	bh=s5eVSrgCvDnzwMKVO+94I2chg9WTOROsmFZqc9vs8hE=;
	h=To:Subject:From:Date:From;
	b=B7qF3QfyLRtE9FrNy6U69xBev6+Ymmip/esJHuk6C93S5eQut7DfIAeRcFB313ADK
	 JKv7NEqt0IKJ8feaMN66ryoM8fc3rVuUqxlh18BbXpqa2IfleIJmVzrowyNeSDYuLo
	 3qNSf2ilXpE2DxNULglE/BC6FhSPdC9iwcYNOAYJdUPbf4NW1mslcrcHiAzibHwKsE
	 9H7gQdlGrVDHiFiYFsxjXvcXmf/XWhz+0DYCscGziBtAy85uMdl49tt6tEAP9SrTLI
	 3VWZaYGrkLTpnoeNshSJA/7bT7Cx9WRc0+T1h1KL+x7KJLuGmNJixTbVZsy0Y75gJm
	 96x2WlK4eoqEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FFCC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834805431.2370.18391806038773091452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8855c4eec645c3637f1e172fde1feca08547a0985eb4b712bcffafeeb3618d2c
Date: Sun, 13 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668348054
