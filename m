Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1A320A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 17:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654707779;
	h=To:Subject:From:Message-Id:Date;
	bh=c5bKID5h9HetyOSuExlRHCukiQrcA0c6IgYq5EFB11Y=;
	b=ZkEriaJcasnvMtKPAoqODWK5pWAjuzMOC0e0JhJAkw/AcjS3sO8tgeCu9e+F++AQ
	mx56EOYHd4nlmI99ocO9aroZ836ytBoKuVgMgYqAlOwEF78Soo0JAuPXOZBovx/wJuJ
	cvJ7+oxrjd8Q2eK6V3lc+UHt4b/APMsVPWN21uuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654707779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5bKID5h9HetyOSuExlRHCukiQrcA0c6IgYq5EFB11Y=;
	b=aR+g8tQjWPBuQQ3ur2U4uqrE3ErfkZ01O68CVu0iVSg/NnJwj8d+VzMzGxbn1b62
	4rE0scV6t9zUHxC9bPnTQoSSI4/dHBipKBhLizp3kPeqq0wkJ3jsT0G/HUhcigdFCcM
	vhsnF0JzO70lyS04/kP1NjuZEphqoVNOvV19FZ5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814444f72a-751f7b5c-a9f0-409b-880a-78fde332a8a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62aa45bd6359b7ea070a61304fe78731380ea9b8ed0e1e9328ff2efda4bbfd26
Date: Wed, 8 Jun 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654707779
