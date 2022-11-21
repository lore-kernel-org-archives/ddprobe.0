Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDAF79C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B6DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669056654;
	bh=eF5fLWyaoUlTMHOL+GYE+MWQVZr/B2yjDMdgY1Q25xU=;
	h=To:Subject:From:Date:From;
	b=rRANBg3oso0ESJw0jF8sSiA0OM9Xm0xVxUi0uFiPKHhy6IwlRsnUaxvNVmYsHkApv
	 nV5fxkm8xbWIIvmT5BiFuxli89vHA0z3gfW9sOcs54fbnboNfhTiXTMefUN9veqlZJ
	 +fC5yFyksG2ilO9M5MocbR1ELSfHVIs7jJbxDS/VaO1T/DPqCGJ82wRySIlp4z1Qfg
	 nF4MvpoTxzlaOXw70lCBsUB6PU3v3ba59FsGw8QVbqyV+grR6voOyCblxxSg9hDZ2f
	 Ku76Yui0mlEtOIKY3cDmxpw/FxXna0fhc544Ae6TPbFOuCCxTue/CU0AcbEaqv4t8e
	 LMmhRvgIYhVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2BAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905665437.17497.5071595826863920211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324b65f645bddb360afc72a0ccf96f95cc525c631404ddfa229c6c71c86bfc50
Date: Mon, 21 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669056654
