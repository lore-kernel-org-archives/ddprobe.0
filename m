Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75A93222
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8CBC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662644453;
	bh=O6ZdvbLiN28VprrKQTkVcSRGy9qTQU4ERgpIxyzKZlA=;
	h=To:Subject:From:Date:From;
	b=osjqWzD6ScCobHllLKfDc6lQtGnBTDhvgzrj0kNRYBQRoXjENV+Pc/MJ6v/BKhE5V
	 A4uWK+qg3MM3yXgpv08DuKgzScznW5taCbLsF2I677Ht2P3YertY6m+6mwviOC32An
	 1KOsm/IwNMKYyPlMGYOlb73dPnwQ/H+bibRSR2eoOBc4SnCyu0TSGgbT0L6aUt4rWM
	 Iwgm2hPA1TrEokeekhqNv2Gx+GMexm6L4CVJbY0EGua///GG1/CRGjUgDfum0JYRAG
	 CXZVINpZCb3XyH9vAGDYmjx8RUU5aexnfTenVX44QO91y0fQixtk0iqXSy6SDK/Esu
	 j5iiPSNQ2MKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51346C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166264445332.30246.11550031011639755554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44115ed2cbc15a14e9e9a59587029563008e13d2f66bd375090fc6aed440c37b
Date: Thu, 08 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662644453
