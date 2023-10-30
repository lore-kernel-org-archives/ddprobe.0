Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD0D179A9
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idAeR/eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDADC433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698676096;
	bh=0kH5VOrVoGVQSTL3cosIVKsK7emtUeRC17M4lmpRBhg=;
	h=To:Subject:From:Date:From;
	b=idAeR/eXD3JgilGKxJnP2rPemqtX7fYJpj4ndbSSlP282LVwBDT8Hepkq2HXq45g3
	 hMVw6vGAszn560wq73up/JeDegYdWjxdAblvOLv4NG0ec6evvr+r94VELp/a4dJx9R
	 WnCaC8KC0PTG4S7WhDkVT0RW4TxKYr9tGqL22o4QJ5B1jQndnyedfDcP44Gn/+Swt/
	 0XR9EZERKDR/LVuptXEhOyP/dkLnQ4tbT4RMGEh3hNe933E/LteYE2c9sVimSuefPv
	 nwBQyMMT4Co1UBnc8fZoIeBhAucSwsezxvN6UUw/nOkU88WhLFWA+eMFFmCd1bLZEo
	 DW8ezgZVY0/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623ADC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169867609639.6883.7281717753751984662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b8704ea45eeb1bcc55408b8224e16f3af7e76c3b38691cf037649378051427
Date: Mon, 30 Oct 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698676096
