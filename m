Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EE87A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659024652;
	h=To:Subject:From:Message-Id:Date;
	bh=y4EC8eOBarSNtcgP0283ggoqvdjavuLHHXgI3ChpTcM=;
	b=A7uJIdPE+K+3/47rrghB+jRkpMAYAeO3Py0BKwOthdT0wmcnMWbsw5+Sb/DW0lKQ
	eo5e07/F052JL45taR6lqFLf7T1MGPkF460FReBGR4eL9SNoXMsoidoOwtTzr3+RJ7x
	ayJnQxys8Lq6ip1N3OQnUDy1iorH3PvBLuW+pBds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659024652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y4EC8eOBarSNtcgP0283ggoqvdjavuLHHXgI3ChpTcM=;
	b=VKMYyXQNTuiZV6JH3eEEvoqPfApb0rGb8IZFgoWvb6M41r2sKZ1Q6iCEQJUIPX5w
	u/4AS1KQpkhUM/lsHDbBzdbXpNk7L/gS8H3ptzHoyNZOWbkOTGYrTPegsyQ4kbqi63Z
	mpC+jzyyDDexls7O/RW4u1Y6XaOfwQTT3gJSauxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245933946-75bc2c8c-3586-4f26-8130-b3322b4af82d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0730894226cc607843baabeace1bf14ef43b7662e9146268263a1e3925bf8b86
Date: Thu, 28 Jul 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659024652
