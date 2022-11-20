Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC907EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7751EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668943254;
	bh=eNArXlTxix5sFPIBRoevzs76zZ/ekBsEFlbSr+NaebI=;
	h=To:Subject:From:Date:From;
	b=ggAay4JU2CbyilIdwO6WIFuPOkl6BA709HCGh3jWkivaYZBrEF4yaxVfEP2F2EHKG
	 8YS7lf9DZ7aK9cumec6hSNmaKwgk/AhWFXev9VNmKj0fgjKQ2/VZidVA56/QmSEQgZ
	 VJaVEPwZx3vftqw3voamFPcFE7G900IWjkRMGEFNN/9HvlI55v0oZACLFlH+vrr5Pg
	 62EdHk7NXspO0/bw6nQ3+Yi+5+m7sx2+dcgU1/6qnLBeOlCh8q8Qo7aJuk4I4/0Qmq
	 Q4Lb160SFhPv0euhLVs1JMFrGqMUdXT0lYObu9b6O6IAlX16YUBuExXCfP3jSFf7s+
	 rBritKuLdIXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55991C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894325434.11775.17403888118753627962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb639f48867ea262d08c3f45b1affba9527b100317f645eb2498d3c42843595b
Date: Sun, 20 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668943254
