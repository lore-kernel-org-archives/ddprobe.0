Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85153D6B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65A0EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664991653;
	bh=Uc4bTVDonRcqjueQOjp+VEXmEQhWC3lAnc2HMKfmCzo=;
	h=To:Subject:From:Date:From;
	b=Ikd2S5m7bUdWzXl0e8P3K2gqDNoj9u5Z+B19fhAZvqBt1WCrjSKjOadHuuw3982C2
	 JkFi8W++C4lqBJnEsNYQ39NAqzkEVacCrfb6e+/Ju95LgmFxXSzb/zYB1HltVAlob/
	 QLjNiXBUO3L+fBdcm1DGrLeYA9aIRGbTm4x30ajQKWICrHf50HTuOfFtMQnW2KiT3+
	 MY6Ce5oZI224pRLa1sj8xcbDc7hx7bjsVy6VtYj8RLLWkTmSvlM2738Akw6nR9CCnr
	 vspeCgpH2ChSw1xXF3AYJ5uCK8t+GmHzpMEvHe9VHRvhigdAfWd1YocV+B5WaxPrPA
	 jXyrMektCx4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514EBC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499165332.8629.16723916254385124026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbe9df0f606b00a19d65e33a4091e334c311899b81d0d6de16f699c5bdece55
Date: Wed, 05 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664991653
