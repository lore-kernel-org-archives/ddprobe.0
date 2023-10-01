Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C73171DE
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9BCC433C9
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696159568;
	bh=vTx4jdXpfLXStgHpQpfcoDvrCEmb/RxqXvCDHz/KyyU=;
	h=To:Subject:From:Date:From;
	b=T0LD2iANUxsN8KITx2kGmDSuXOSBJyTHbyQOdZRrfO/FuG5311mL2w1ejgiou3o6w
	 EQKHf/ICYGaOmS2OOI2CFva3EEzgV577Twhtpeaiivfcri8orFyBDBJ3zuz0iGFgS2
	 wkNDYjhoWFRrYw6EeazkicK5LrWhtClWCGTSweCLekb+WXfGEcVcR2KD3n5cKfiQbQ
	 11Ap2qxyIGrU90bQovXE1eqqFzTRnxLtY7YIEBC4bCEKtxUYJj2Y8kHZ0veCl2jeNi
	 Q1FoBG9DaObIb0ZwHeNO6cBVu1G0+MWsP51vOx3M7XyyV3pY1L64fP6tnATxGFHDhk
	 KUZR7AE5JHrFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D16E748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169615956873.19688.16942661681595504921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fa7a6e0f6f515083ce9034768b550419027be3205e45b71a3d97acb7c5566c
Date: Sun, 01 Oct 2023 11:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696159568
