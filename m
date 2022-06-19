Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15D7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 06:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655621819;
	h=To:Subject:From:Message-Id:Date;
	bh=MOiv/edYnkvDInKUNr8Cp82CFVaDiOomRrqHmckKpdE=;
	b=b/QlwTk7LxNKfswNXoLYejZf3PoIKClVAstacJpQUV4zT1WoVoI9ekXw7dfV+QgJ
	Z0W7ldFhNbFlBxPYzEM4JrS4ZkvBg69alFrz11inmgZUxpL2hYYyChsuCATkymolW9n
	JecKcF5zI9+H1uGCsuiFU8kDsgHzDbVUYdc7f1ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655621819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MOiv/edYnkvDInKUNr8Cp82CFVaDiOomRrqHmckKpdE=;
	b=LHznTK1gfry/r438gD5+u7FRrfZksNZIrOKveEBDqrbVG78jNKx/t1cqkYoA5ik7
	KWr8JSn96kAe/xeZbBu3oEPF+ACdNuf7DpfP8oujPOLc0ES7nPD2+3V4LUBLMDoFTPA
	lSstKorptpFygs9XZXG9Yyn+w1g/2zIzaLrkBjFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ac01b7b-0d12321a-fe32-449c-9398-188e69d9975f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca8d17a43efdc06e256f10787803a817fdc569fdac1b0b1f70da1f05e7c3e08
Date: Sun, 19 Jun 2022 06:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655621818
