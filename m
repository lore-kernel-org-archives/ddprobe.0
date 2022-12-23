Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3B619C
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EE5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671784287;
	bh=YxgsAC7fu5jyH0+2hbM6cfFbhmIgQpx9rmSHQBQR2z8=;
	h=To:Subject:From:Date:From;
	b=Ya4YBKjyhwpMdNo23WmpCHIGuFLvYkbvoLa6SZuMyAf0UeUBYsuu5Ow+odWEEcbyM
	 F/z0vn9lyjMSjTa7LefeupczW71OY5/T03Av+6SNmE674xcnZSfiQeWv/x9VXPoEfO
	 uEvXNcCQlALUKEpuSUQ0FWvzhygphhQNKJ9MDM08R4mk1Bf+fy5hu3y4XBgYEG2rMz
	 0gj7FuSfMWRR3h3Uz446VGyJTmXnkeE8z8B5YHvyjtBJ5a12VfKuqZe1EjVCE4Vcvp
	 AOWFn4wuNUnaF7F/KQdpg4OkZXIDjgFiPzpLeTKtvaIvWOIR0s7yH0hsK3fHql6cdW
	 UbkdbADLk8UPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C0BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178428740.14800.13759762907930943391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e994bf9ab6fb17924b78b05293c2434b6a174a01c278df7d54eff80f36e926
Date: Fri, 23 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671784287
