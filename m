Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CB77B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE70C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672041087;
	bh=jI9/IfjPwDnbCdwm2oT8bNaI2W0ZH+Wgs23Z4Z6yq4Q=;
	h=To:Subject:From:Date:From;
	b=aBJebfLenSypAS7tdNGjdYvcm2CQbNampR9Xgkv9QGV68P5HQnwUwqJHBuN0lSUOM
	 RLPrRW7RqGa1OWgH6uPADlLWQ68ACu6yXqdThLqlVgMoiskY+64Mt8AW21hm4SGEPW
	 yBGNqkU1z1eQ6cR6cO2noFwNYNs588Gt0WlrKp3uPovGOro7p3S8C60KrkNrs/vY7C
	 VdPIDmZqmY2r0PuxP5sA20Gc+WjeuZdsvJqg8HzACzxDZQiX24cCZJHnX1meHGGBzf
	 tp6m/608c5lSKcuWwO+vjP2HeVdB5g/kg4wYwTaqX1ZwHFRPdRxV+lYZKNsc0bmIgZ
	 L5euj5moVS0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CBCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204108740.7028.12526715638771099263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a242773d93ad0f62ffa2817fcb91ca0959f2bfb0dd3db71bd09748099c3508
Date: Mon, 26 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672041087
