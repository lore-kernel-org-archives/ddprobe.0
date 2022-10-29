Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEF115AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9E5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667054454;
	bh=RHc3yb4YaQta7o8n2DXReh2PURAOgH8hdYG4hLoQn+M=;
	h=To:Subject:From:Date:From;
	b=bC0lD5Iv2sDvXejLY1K7bk+VW2uCTc3pkjYMmTmla8r5/wiovz0Rk5UjAe4UyOcTe
	 yzM0Fk7PsZp5Yg5oDVFenocWOHqKQx9Nv4h8m5i9w6LDw7UXPXPIdoNnkPuF0Qc0lM
	 OaY3ViSLaN9Q70FmC1j7xSjUfNHK8ZPsfb+gTIekcL+olvGaH7yh4ExjBIlEvAw4nb
	 wNbd61UpEVBDC5dmU+le077u1ZkeZ8+Wb4pl84etzzRb9G8pRfu2l/56un3rzFGKE9
	 SisyDrVhX9qj4IqfVhO+J2diruKtfMM5b08Bjp/VgelilOgWhY1TxNTRqbHX9xgdRe
	 IvT0EGS8a8sYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D15C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705445432.31648.17689639818636088701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98ad1b1c05650a21219203a239167d7d3b38eb349fc824cc60b0aec410357b9
Date: Sat, 29 Oct 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667054454
