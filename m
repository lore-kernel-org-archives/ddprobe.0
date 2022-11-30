Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BC8A42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669798254;
	bh=1+1g8iPLdJpeauhqYLEiVKgApM33H4CITai6AbD5i2s=;
	h=To:Subject:From:Date:From;
	b=Y3T/3lQfyOlaVpUM9razDjytwjN3Pwb0cMBJoq0lKGf9VE4/mIAvVKGtkjySxmw+y
	 EMCxTyQumDhkyxD1+u4otcQmNn2myLbQ17prwXryghiIaZ+MvekU3kQrazTUxMoRqP
	 c/NA+Sn90YnhmDktfGvFfWRP3SY8pIANhVvypXdecZPc4NfX+HpmO2Yg8Rw8BpFbCK
	 Mpe382Rpn4GtCH9OwL2X9DlEc+eSREjF+odwn7r14Uf9OsP1Bdb2dsb+kPTdQaY+oL
	 rdIvgXUOZ5gFtzpPany0GAI65rgGJl7HjFcwesuG9c3i9IjRq5Lt70AJ8SKUMSAttu
	 bSOBAIBkm+SIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D571C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979825436.29968.18173138072284981426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7903472ef0ad40d97e90bcc46153ec52d4625059199633826f1aab6b7cb24e
Date: Wed, 30 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669798254
