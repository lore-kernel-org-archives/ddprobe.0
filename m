Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF336D22
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F24C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668174054;
	bh=DjcRMBHpKskkWiN6Gos0jjCAnygTS3WrS8mvlEVhy74=;
	h=To:Subject:From:Date:From;
	b=mxTV62zp12eV8Yp3EoMJRkPGYrj/zIzBEH4P7psY2CYNANZ+IsmqbqFZ0HzPNP1ei
	 6WzIOfWS4QghuowehDN0t/EsyoIQN4j9JurFXwPs8IxFEhc198SRHdbFc4Koh97ayu
	 0FMgEwJNfmDEQnOR6sNN8Zl0bpvPsmBi4ojDUFQvwrvFnLo68+yplLmR0E71SS/vAf
	 DHy1YyJoL8ZTBv9aulIJlvUAmYxNSsXzFZXExVV40gFJRRvLkyHR+MH/Zbk4/eRovL
	 fIatKiEkVSnXLZ2QYJS3gdMAUsmhOP/8jcxZpQF9Zxm67OnSk0/QhWy1Y/VOBMPIJ8
	 O50ZsF0c3Bd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58902C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817405433.11712.3587942474009967354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9ade9bb3b347d6032897ebd474919f06aba7eaedb43fe8d48d62f552ffb761
Date: Fri, 11 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668174054
