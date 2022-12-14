Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ADF7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757ECC433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670990487;
	bh=6HyqlYottr65MtboR4U7GzR7STlw+2RvXTx9nAfXwG4=;
	h=To:Subject:From:Date:From;
	b=YvF9Cp1tp5EsEruk5GlOP0DDFkzz/irIiD60sorO5AdpszDhrkXI+BKjtQ2nx1Lip
	 9DeNP6jafaBPUv7quliiqUI38jZShFRsaiJLHphEQlX4j8eIaYhJx0g8Beg0IQan9T
	 rTEO6B8EokTcBEvBnQeP5ME+54pl5OMoKMkJ7M9LOOsbTI6oF5GAIcUFOIm+cmT1h8
	 5FznHI07uWGDVMz64knOTzAGAK6QllvuIH0zzhZo6a9rtNbkC5LsCseuJchG7wHiRF
	 FZJYOQjI40sUMxRgxgxRE6nw1rSyd0g9kBSm8Hj68uHaaevuoBEONc8AAMnfKkRESo
	 kLFV+Oxx6eSnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEBCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099048738.23578.16826447484019943628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cc1f07c8c8349563a58a11d999c66230e0d191f2cff01fd808cebef518a487
Date: Wed, 14 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670990487
