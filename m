Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE39828F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DC3CC433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661592052;
	bh=OvD/f8Jr9z8CmxNSoOSJdf1Hb5uLhwMi+8EvOq9//Fc=;
	h=To:Subject:From:Date:From;
	b=Ptr3fnCdgE/TgpqwKBoTg66qjUPHmpm+uXGsy7x6u1+IyJwmxux5mHPVdY69ipcsT
	 fy7cr2vAjy6u3Tufg41A38gTcJLSvZoyG0fiGXDUlVJP6nwfhxxL0FYeM3yZ0JqRAe
	 f21CaRAnNVOAjpXR6kRMUqhPYdN8vbPvM+NSr7NX9uY0aB5dg+rqGOjCyWgahYjmgW
	 sbUwQOfdFrpmBZjJptUkc4uj0cNsn7rNcirXZkDvrbllkv/MTF7+z+3Q660F7bRize
	 8xJavyEVQ6nTHYFm4idrWPz3v8EH6F+DIvIHQSa/cbTfP1p/ifymkZM1FO8yMVEBc1
	 w28xPVtmEI2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2CAECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159205243.20694.7574640683513132806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd33f67e8eb50519ce31c02ab322465ab5cd11b8ebcc71c44223c2ef5e522eab
Date: Sat, 27 Aug 2022 09:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661592052
