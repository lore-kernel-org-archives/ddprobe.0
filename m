Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F5D15A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4446CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679449086;
	bh=cLL4Qa9mu7UJORAKB4RmGwa3cdcSNSrsN83655LmSPM=;
	h=To:Subject:From:Date:From;
	b=eRH9cfz/pPSf3AxkWg/byal0554LpshRs9fjVV2Geg/NMlQ6FrqtUv2xcpylnHWM4
	 u22SrZ83eUdz3lSipd7Ql6LMfMVzB8uLKMqTy6kVthU6zkA3q7cu8c0TGtgWVtCq4T
	 YfvWQQ48PFTEToK5A4maDihurCSuWpcQisS+Klaw8vBy/0N17MiaxkJgmh2uAH2Cfw
	 2W9V0zkzvzF8lwGtjCAHmcrgf+h95UNNjMAYD/IkVEWJXilgrCtbvYd9KEosZjlrLq
	 L6yZmKJn1qzqNhNW0dNOLLum5sqj/rkCSthq5tLghvXxpCmkGd73shgBF/6SCW2vWC
	 vzpIxQNX3S6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12609C6FD20
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 01:38:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944908602.18215.8386569099934932795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a76cc564a8f6cd2079ebafc29257da482182261770a86035bd2fceb4437bd6f
Date: Wed, 22 Mar 2023 01:38:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679449086
