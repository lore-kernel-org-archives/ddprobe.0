Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E87E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656914812;
	h=To:Subject:From:Message-Id:Date;
	bh=AAX3d957H9GCOgEM1Kjr3gP9vVyfJRntzCqqQ9xha6s=;
	b=H4Ea4HxlPqtOexYeO4kHmEpCdLuhot5VQDPrXYGFRIyIkZZjvEHIgS+2ynKf++rv
	Q9cxi2p//6mZpZHnyG4HXp3VfRIwFQpPFJ25ovUECMrrLLCpC6B5XuxAISdod8D+Lep
	hVasgwMCR3JuUonKQvrE/kZzXb4m/VdhASKqCzdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656914812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AAX3d957H9GCOgEM1Kjr3gP9vVyfJRntzCqqQ9xha6s=;
	b=iZ1A2A9wvri+/69V24OKic771dzOPuAxH8aX3ZCuoy8FTroG/NGxw3vgeHFpdj3k
	A52adYDRe3RoUJHUlusdkynnC9wapHJux6IR69RuNmP8OmoXXuNcujU3Tdcmv2mywPW
	Kw+w8azknRO4bnsrv4ZSRdMvyKingB3AduynLGuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7d19d9f-d381734f-df79-4784-a532-adc3e50ef3dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4354ac547d23cf460f4e3da3d5e438f08549bad3fe2e0f49f3bdfd5b7b869f28
Date: Mon, 4 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656914812
