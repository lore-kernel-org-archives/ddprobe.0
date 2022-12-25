Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFA08836
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85926C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671990687;
	bh=bOAaoCmgGSHQwXLlNCZxjwm8SCBQ7gufUYyWafYiaLo=;
	h=To:Subject:From:Date:From;
	b=YeFQ5G2B6s8Fpf08Sh0P/XDcreNBZeysGFoZAiqIh8brrPfZJ7MFonWzErODiDv+P
	 jPmfxOGAgdEG26Gg2cqoEjgFt7R6W9UuaNyU+q3lXj2Z518MsF9aKFO/Ga/AWKmUp/
	 WZIrvBakOy6H9tKl5SE32Z2KiddCupK1Rpz1a0B16wKwM5UbK8YmynKougs1iQcqdR
	 wGSAKEbuUljwhaZDkMjrUYUHi4D9t45bDchNk2CBTdY8nIqLbIMcTO77m7DnaKDJ6p
	 gtCe5vBpdg7pPsa8cAjtquvQlqrgih9FvBpoD3xHth6YKNSRspj9MUo0g/FHuGZUBr
	 vEMuAv7O4Vyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4A2C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199068742.23033.17951691708457779769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccae3433f0b377ed618a5b0f23ab2119a231c8a759fb8f54dfb46570f4accc46
Date: Sun, 25 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671990687
