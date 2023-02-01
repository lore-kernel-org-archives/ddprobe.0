Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC5A882A
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF60C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675287365;
	bh=6yYT+cGIotnJhfPUT91nhJTHUg75G+DqeQ/OYctI9GA=;
	h=To:Subject:From:Date:From;
	b=RkVquPwveuJRwV/LAK1J1ha54mP8wjhu5P1lEM7f/jrLBoWGCBFrl5NU9a49+CnAX
	 urlQNaATZysjU2Fk6pgAC8HFjTUq18yX+kwSMVqp4I1mZM67apb2vDwDSO1hDbJtfc
	 3m+9x7xWLA4TRVncR5u6EuitnYm1IS5KX5CwRCP/WIrgnX89Ng1nwvn1MU+hQLPVxn
	 UwNRtI8c/FLPyIA5tuk4G/80HRIGM/gt6fsVv1PLVa93dejS2qqV07gE3UXSdlBfOd
	 x0QPV/PrDmgVuRW2jNpErPh55AZTH8lzgG/c2UUd+qG6I6vjZjsVPrR1c7KF5sV3b2
	 AhTUagPKsMbNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE24BC636D4
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167528736577.12751.2592887781697631078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa0b9f6ce3db8486d61def4dacd6efd161ad0ff4cc405e8d3ab4833f97aeb83
Date: Wed, 01 Feb 2023 21:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675287365
