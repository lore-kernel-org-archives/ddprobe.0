Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728F15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656175012;
	h=To:Subject:From:Message-Id:Date;
	bh=2YDSmBvR/T5POtGj+rMvODRiQxX6XoWbNm/wdE57cCM=;
	b=aOsZwqVdi9RUIwbR1s4IUrpQBMOttHmFD6FmJNLudmre/+/IzUzUStj/fLbfn3SM
	3LqYHhcTJ0V0c3ozn9MQMii8REgV4rhUus37/U8o3ntEWJDSLHFx6XU2v7kDIQSUD6i
	mr/nEzgdGBayYp5jx4LP4xwWZ18yHL4mBasMIiqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656175012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YDSmBvR/T5POtGj+rMvODRiQxX6XoWbNm/wdE57cCM=;
	b=duWiOE1EuNvuspSoQVQQI4UHCcITFdLQodtrSoR/jukSGwjpUX+4Qy7anDwAsanq
	FyyZnm90r0xUIgA4vKQA+GexpNzfdmXTBFjfA8j38HtbKKIFG806zHAGz9PAYk26aGV
	iMew7AgTaXGTGvJdkiPxeqs1ImgQcrYG2Zzz6P+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819bb929c0-b6add6ad-cb90-4bbe-a7ed-5201d0eeca6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cfe60d5798861a186b4c055f8b8752582317346284466c42831966463020fa0
Date: Sat, 25 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656175012
