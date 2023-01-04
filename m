Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDDE7C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D8CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672800687;
	bh=ulNUWbbVqiqceHE54egJ9YN6GyhPAA7jOklg/Ne+olM=;
	h=To:Subject:From:Date:From;
	b=Mmw2ZuLUfTZDesaE9m7vUEjZHpVs6j1miM38EU6y0pGFTCZA0azIjn22eUqvsgkez
	 nxfpI99mjMv6Q6U/CF/CtlM3Wnl3rO7zuPbWp1ag4lqo8azNtC3rK7RaMVRwvJOCL9
	 /jfGQm8h4ql2DaPk0WoobRgDtlu3bncxCt2MBplDoIEik6wxu6qsnNaHzwnk6wc+hH
	 UlqKuynkhr6NvT/B+iOIStOgg6oN2D/ctwkqjX/+UDGrum5+hcsv5jP6VA15wjkh+c
	 tXyc0r9tXY77KWG4z1jr3ozTuE15Wb6op6vo0TWOY86o8KYVdxizTTE3bL5Om5RL78
	 lMmE3YKyCQG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F21CC4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280068738.11818.15512423358828198859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0e212555d5bd026b304da08b6002017305ab8f95ce9980c2ac66d18e7f6fea
Date: Wed, 04 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672800687
