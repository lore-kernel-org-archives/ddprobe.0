Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B033C33D5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D02C433B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661445052;
	bh=ANB890i2F4b24YTA6ym/vRIvqt1f2BoDj9sg3av/bEs=;
	h=To:Subject:From:Date:From;
	b=CWth69/cfUqCUlmHuJlBzjLm6V6FtHSgi7x1klFJ9HilOkRX8FHJ0hOTeKzzY0Dn0
	 zvcqTe/96Y21Gz2kG8YUzp3BAmy0F0Pf0zIMgDeSfmwsR6/c9Yj0AcaWYMnKuV5eKI
	 mevPDibp4NoIgZdrSsKcKZKRoa/g8qusQW6K4JeZO1sN1oeQ2mDOPwp1x/HBrhzhO2
	 MihNA1z55+mqN7DwQQ4PppRlZul9yuvFQ/GIM7wNGdSoQnp6TuzvFdZUbL3Jo2KqYa
	 nu/f1k0NomHf0a1SyLApOnhesU2dpOZ8i94pAfmot3N7EUIO6hhfeab/ws7lml21uF
	 VLVh+CUNW4Nuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F015ECAA28
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144505231.24890.3887810420095528297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b55c72b3e2a2bac5a07dd2e90173a25ea6bb69ca61a89185f561cc975b73168
Date: Thu, 25 Aug 2022 16:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661445052
