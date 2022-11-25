Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B1B15B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730A4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669341054;
	bh=q7TrNxEsmw7/XD5bcQzLeSeovqcDArYbNrzeo6IyObA=;
	h=To:Subject:From:Date:From;
	b=FBIePy/43HKAX2sJFgT2k1KiD11KHbT7gDfCfL7lh3rA4MLj4DtmcxLohVr/0pTU8
	 zpyY8hjrqsO0cKxgFoB3MeTf5UJ23JHCkqGS0HFPHCvPwlJyR7VxEbJ7ihQP993yE6
	 8syOsoF7jgLAsenaaUCfa6Rz1FCeFBppEmd0xkfQiqaV/SmR6zRE0bBBfJnjHiqoql
	 ZnY37j07VTcXqMdfJeJj/2VhtIKrwUuOcSemDqqyD4grCJ7qUeQZ2qP8pFS/Xy+0BC
	 s8jNzcUGVnPg7OV2tPsbUa3/O7835Vh2wQz7BKEwubE+Kr6bzrkU6GQcE6J7dL2/Qz
	 rK+2Rk0AnGyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57719C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934105435.22495.5900371174620393879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa9b55b62322c0041bc3ce8844c0e2872f2ae328dcaf58a78a7844e540b74e9
Date: Fri, 25 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669341054
