Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351AF2904
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA288C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680267665;
	bh=RX9lZBKpPNJ0prGyM8Gr3z1SYnUMF+4bP3Cxvh/v3Z0=;
	h=To:Subject:From:Date:From;
	b=CInSUd/DPyNf0hL9BTNU2smRpDg3HvrUkUkH+dpWOPxN1FaDyViWB79cNcEbxTSyl
	 IHcDSvUNY6MASx6hKt3/JrQ035Se2xVgwQZ1Zmk4pkgJlLLyHhbvjeMd+aFFyu7cPh
	 XAAqDUJACUjoH7beyiq2vPZuM8UQ032X4x6W9vJkL+9VoGKGay99psZ4LNPe0aIoI4
	 znOcIL0QMylyjOMiKMcyAsxnvDAv3BjEZ5ebMa9B0+DYYggvy5H17uANw/9TDfoHSo
	 1NRfgo+20udg28XYNZQpVzihg9AC1fg/HneTU+1GVmMtMQT0XEMHw0anQS2n9D8iPl
	 pVgfO50sxGLUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2FAC76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168026766576.5452.13405152288985729765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a639b45bf245d2c07f0589d15f8bd476f917e977069cf09c6e9328a54939164
Date: Fri, 31 Mar 2023 13:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680267665
