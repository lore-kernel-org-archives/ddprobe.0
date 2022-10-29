Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C9E2574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C11C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667058654;
	bh=13iOHoXbNlaTWeEhH1JXz6lhWALZt6MKlnheGb0gVe4=;
	h=To:Subject:From:Date:From;
	b=lgKeMM5Ta4JmFh5GtpMWxEjShYXG5/zvGQ0k6x3tOo0i3xPilK819yiTQEG/vIVFy
	 45g8rAD3fB0EtrQbU5gO6IK/CSX79CqJAKE6Un899ep0xAp4+h3M9yphhINYojcUOB
	 acA62Utn/8P2BLFXaqXSYMH5G3EfmhOxRJe7AprYf4dQgtw+G7+qeDD/u1Gbr1BAzi
	 BoZo8aJ2RD9ELGdW58AxiD2BTjQWFAs+yfWy873I3XkjCIjk77PlcUNx4/MoekFs2b
	 wjrgdvc2PZQlpNKJjwJMilJdp5+7nOb9lfFzt4YPFpSm48nf1zQUOP8jAebzYUs6p5
	 5JYjsNo20f/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A01EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705865441.8520.6528590593399777217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e3d592dcd8984c0f3897c6450d8c7c2663e8a500ced9653cbae16f664970b8
Date: Sat, 29 Oct 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667058654
