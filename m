Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EBC7E
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 01:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA039C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 01:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676250245;
	bh=shDNMDJpgSnrlpdL2ynQvXnCMNKJr39GFuTuGIcw6zQ=;
	h=To:Subject:From:Date:From;
	b=u7//EbdNWsYa2Ngaq160SmWctGNSQS5S7mOaIr54lyAMDKZm+LPWwZljMeV+JbJSF
	 iHNVnWhkaO0I9t62h/sIQKqV026EIllr2pE8JCXq6htEMRSJSJ5snaZK7BPsKWr4dQ
	 FKCSkvt2m6uvJEu0ucHr25oOnFwqwGJj9T7yH3lXuwrYDcT1K1eWmI5sp4sRlWp5WJ
	 OQRaFyS0nJp6SvRz//aA1HEnCJHcDNqR6F7/cF8W6llCvREO5mpM1evMX2Kq4kSKcm
	 6XND8EcYZ/1mNIl8BkkMnrRTANm2ZbvPDPfSKwIb9kipLH36k1+lICM/yXq+6D+JzT
	 pToB6l9yYmstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90E6C636D7
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 01:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167625024574.19378.3892942227213031636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfd0d91bdd61b644365e88b01d81a2e1ac5e7a9d39f6f61795df011c39eed15
Date: Mon, 13 Feb 2023 01:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676250245
