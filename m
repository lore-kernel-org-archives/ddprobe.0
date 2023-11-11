Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12E1426D
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjVTNJLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D3CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699705696;
	bh=vghmTrqmiloqZ0vNFIcTimY5IqOchSX74RuEDtOLnKM=;
	h=To:Subject:From:Date:From;
	b=qjVTNJLG9Da4OFicYOgUdPt/o/zVz9Hzl2Ev6SOOyLwGm7UgJreHZeDRJSyM69Ff6
	 tz/Uq6jkxeOBqm7k5v48IZ5DYPWM1fLn2nXOMThA746ZY6g6tQRXyLLDQDmd/y+wUR
	 MkQDg9BI74sb94jmKYRAMxpXHtpucaSpF+PyvOLXnx7hfiwoqP+yRgIq63IwteVM5y
	 EbZvBgnLgfBXdyfwzM2aSr4qZScy6UDHTNOdak4cbokuehMl2IhA+Wj96VyuC8Tcau
	 pNEDAjyeun5HxwMgR/FkZ+HQuwbRZVh52hfgQ1S8Nn/yQ0sQY8u4KTRFu7N471qZd4
	 NkteyJ6aQPlEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772D5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970569648.7688.12820664056161796178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5290578b29f041a648d6406d9301e598bbeea6600bc7053cd6f5928ec65fd6
Date: Sat, 11 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699705696
