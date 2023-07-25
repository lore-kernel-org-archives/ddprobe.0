Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A095E1FB7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 03:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07829C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 03:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690255329;
	bh=QoBhkAsy2lGpMiQr4vE6/x6M4yIXDdNeCR3EGidzlgU=;
	h=To:Subject:From:Date:From;
	b=P/CspDcmAAjIFxXOv2Q41OQoaY9Mjr5NgcgdyQSoIzGdumGMhP0688k2xxYgKsKaE
	 o/0Uwmfbt1dArZ98melEWbZENZj4cPdUpSip9EONXPegB/V/Rv+McEL0v6hz4+ECX2
	 8PVa2A/W5ENsFTI6cuvz7odiFuQp2urMMEFeYe9zSMwKjRpToEB7nxiXgqqUI3PIM1
	 JAH1sE6QTdiBSz4Gjx48jKlRqX3n8pk12tyIirYEi7B5qeErteCTM1hCUtTX+im6r5
	 iRUiNcCO7AEZov0Rl/pwEbc6qAJ4k4ZXjkEg9kHfocsCMPTOfRQeudq0NaRcHHhZzx
	 opa6Vrwz8HlWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBD25EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 03:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169025532884.9341.14991345776074723633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9777f8af141f02088288ff4f31044acd6f65b16fbf0398e5e1f5b3b36a05bb90
Date: Tue, 25 Jul 2023 03:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690255328
