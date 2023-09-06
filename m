Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6060B10954
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D0CC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694030648;
	bh=pW0GiJM/OZZGpJU81FUaRgeYTtA0noafGIbWSARdcig=;
	h=To:Subject:From:Date:From;
	b=QTqoFWY08DsjWO+M26pHXOKFe+2mkaKKrqWxwjAtEQH/b3+66d60s3FcJqfpEgwsP
	 Nrh6EvdJmiCKOggK+f9vnvFD1TuE7NGweBNstfCIL+532eAxNZeMU1w29tOZ9HTUvh
	 wWwA7WuowVi5x2VSovGI/VUZM0RwC3iNyWMslr7o1V3eX+2TnQM5AD9ht10vd5mOVd
	 5KT78CU0wJ59t8MGV1fZ2JLjN7MJOB0mV9KeK7uYgnc72oBBQFetQ8GU24+Asvu2Aa
	 zore2tRg18YYb3qR6Fah2Qoef5A0r8EmMBxgxxuiAKxGFLz99dei7GDozX0SzQ1Eeh
	 GE5UouDaQtzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7831EE14D0
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403064867.4537.9644033662807064222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13eb1fd4830aa9b5be1e357a9948ca081b4b946046d42f82e1186496a2e2f32f
Date: Wed, 06 Sep 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694030648
