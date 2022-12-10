Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6EAED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81292C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670703687;
	bh=pwCqfy3vuFWgru7TIFJDACDSzMY7Swm4coW1oTbS56g=;
	h=To:Subject:From:Date:From;
	b=kGytQoMNxaG4FCUtFMTGe/YP3S8M4vtLM/qNgnT0Vz+sEXg9DH0KLaKTqk5bQoOH5
	 TE/0R6zMgG3s3HgzmlgH9spweSflQqye4tF7Z6i+p8+NKubrBh1NVeDb6UeA0MzG/i
	 VtGI87hVRFrNlqlpDRdX/YZrGiiCU/D0B/CzVlpfM/rKDOyBAD8JE5Ut2y6cpDPRB/
	 7rfs60zLpSvcBLoFgDGU/JEWzvoSnIjWkL6I/LBYlSl5vGVB/f6ezfkTlKr1CFmyD0
	 DX4j5xGbON/B/QYOCNW8Az9AKtGlGb58FWOAY++ZQAr2iktc4QZB8xWLow0OduSou/
	 Bzp305P7ztmyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64684C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070368740.32221.17821313175846293730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a598b715614d86b68eeaf531734e5d4b99a97af09bc610398a181862edc37a86
Date: Sat, 10 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670703687
