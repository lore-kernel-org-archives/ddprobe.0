Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD8E65A
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDCFC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662709253;
	bh=mEp5F6lC9v+Oy6h+xNbJLNX0YdeEcq4qOftIw9bmiqA=;
	h=To:Subject:From:Date:From;
	b=HdRUlYpsaDvNcD4QO/rHY0f65QBlsVoqPmg9YjvjDCW8JlpoIB8Ch0e3sJWTP38vO
	 JF1qsamia1vHuF0pNA21ycgQQhw3xPNLw+Fyr11ymyRGSsbltVIwxfVfvfTFwhiUVg
	 HC/HiWOpOEJKs5K76kgl401JR9lA3QKrlaRSnA2vvHaSx4FmZWF+nXa0WNtUEb7V+E
	 YbLMocsFmWOIvYP9yGifC/yYfd0cVSohiN92i+Dhsrg4CBlklBPEcZup36BMOlPbGE
	 vplg742YXOtv2YSiV2PlODiMQor5oOFma7KzJYndMKzSNEHTq8Xx/Ss2RXuMM43bkU
	 A+ax3LZt9KCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5497AECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270925334.13298.6782538881638502321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0cccba7b211f68eff02e82178bafca65aafb4586ae4750841cc828306960db
Date: Fri, 09 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662709253
