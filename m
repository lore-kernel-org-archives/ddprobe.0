Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4479623BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659168652;
	h=To:Subject:From:Message-Id:Date;
	bh=wbEqhs9HT4SNws2lhOlTXBBpHKdLmJQ/gCCEHW9G2o8=;
	b=Ev+yAvLJvNqxwFWO2MmGljx4xSgmg4e+n80qTdSyl3e5VT6TRM8LnLsXglqXrfCH
	TpivtuC+gQKaKDUOOLRgGMWF5Qs/rL/9dQncIhHna3Kbck+XDPveD926UWt5WvKvf1T
	swGNeONDnzfeJyTE5A1nFHgS+FHEz/kIxHKh0mpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659168652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wbEqhs9HT4SNws2lhOlTXBBpHKdLmJQ/gCCEHW9G2o8=;
	b=BKAIziMKLpfk0qmlQlBtkfCa5GLHbDujw24Uz39bQ6oh5Q/4UYAUI9rxRhl31AaZ
	QcRNfc+TFtSafY5vA+16YtP1P4HCCAhXMqNk6izk3yY0yiAEupDFFt8+zKgbFyNKapf
	7pR+vN9zJQ/Tp4jKR6Uz9FO/rjsl0z3fHlcwfAOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e287d4d-b8c3e38c-fad1-4355-aef1-ee377dfeaaa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 502b5f520f863b03ae3a30d7b27afc0e2539d5ba0feb0dbb9145d8ec0188a14a
Date: Sat, 30 Jul 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659168652
