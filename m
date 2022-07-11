Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B024411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657554412;
	h=To:Subject:From:Message-Id:Date;
	bh=S+Ku5A5hx7g+3YGcAU9G4eiTNylp379u34X453l7nuw=;
	b=W3g5J/Vw0ZUVB6LaZO09N0KNlX2gqJYQJRlsK14U+kIRX8WU7mt58wSaMUU/ENHt
	9RBHubd5IzLfdqK0Jlzw5go2Z5GkN+5bwfkQrcyfHI07/c4gY1xA2JWTjKEG5vsylJ5
	iZPZ6vHuM3N9sUvu+oUPL0BnfShUscnefGdeBSuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657554412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+Ku5A5hx7g+3YGcAU9G4eiTNylp379u34X453l7nuw=;
	b=YZJ3qDSEHaagd3LQcjoSMAG2Ns4mQwwP9BgCPUYG6LA0cf/u5MfLcJVdmca4Yzbq
	EjXWWf67/8PYRpKX1aUn65FKcxRrdscp4lYzancKudNOn0j5+t6w1KISgtX3p20V1kG
	PfTVVAztSrLKO/kDBKBizxFof5Vjf9nAPYLEkXts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edf12329-edf22127-b0f0-41e3-98c7-0953bbfad65b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1752b52dc41cc91e95a877139be975e52dc106c25b7ae2f1da77d5d6ba1c2bbb
Date: Mon, 11 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657554412
