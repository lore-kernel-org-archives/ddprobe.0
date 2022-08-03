Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B270137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659538252;
	h=To:Subject:From:Message-Id:Date;
	bh=0wwtQ+umnXkYlXzN1QC5Z8XRQsS0K5gCvPlpjEyG5Pc=;
	b=FTTT4ivK4dG7068SeE0CjLDPBP05VL5ISmGSpGid18huHX7xln/Cwpa2PvUJHMqm
	cnWXeLs4d7jKwxS6WJjJSsS7puG9PggC9eERPBdp7/SK4fqn/sCyYNr/DsdzVR57OI8
	il5Ad43HxsItx9/LfQ7e1F734n3m3VRcNl0Yj6M0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659538252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0wwtQ+umnXkYlXzN1QC5Z8XRQsS0K5gCvPlpjEyG5Pc=;
	b=ChsYnXmy1Wd9xK2AQYB/VK4jTYQqDT0ANy3zIAp99QY0x2PbruQTxht+bop6WD12
	M5DlhTQw3Qiv9b1P630JzdtKlewpn/a6OXasnELCv9RAjBqPD0wS941s0M17Aitjjtb
	pKueM91lb5iIsQ625k2B2HEvClLjUSXm1dqQNGew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182643022ef-776a3d2f-1afb-4cc4-9ebe-1536609cc567-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de90b634d287c972184af7c72e4b5bf80e7cea508779a9182ae047ae4124f6d0
Date: Wed, 3 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659538252
