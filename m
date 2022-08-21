Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E981377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661091652;
	h=To:Subject:From:Message-Id:Date;
	bh=A5ups56bMGbFj4HP4SavSKZz2qkqiTxG1+DFauG21EA=;
	b=lP+0yyVQnCA73L47rqDJash1/yRICRoxxG9dgzdos43tnw0U0VX7YuKRCG1nDTgl
	ny6L1KtEIS/9papiqkfjYGQnV09REzesJFZ8MSVoHhA+JM+PtHOWcXpxTEX9TT41O0n
	990spPfUAIOB5c2sXYyrzlaEqskAesyD2NGHmitk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661091652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A5ups56bMGbFj4HP4SavSKZz2qkqiTxG1+DFauG21EA=;
	b=ef8SEwab2TlsFaTU9GUprvmYqFxE22OvZfuPoNUYQf8kpZ1btWKTp8Jg5n2AQopP
	Yhfz/CRInz00IppRReY5PoOZEHvXFXgyEPpEd9sQUhAIoDJMKBnz/g4VEVtmTt98nmK
	OUgFZYyZS8AeVdyLuT2Kds8OTbjR1gCtT3f0WncM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0c723cb-e3f92490-e893-4084-9639-03fff060e6fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86afa56e7a589a4933194dd3d9652426de2977b0fd93e4473fa9e77287dd6cc0
Date: Sun, 21 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661091652
