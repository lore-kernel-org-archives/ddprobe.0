Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23929ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657376212;
	h=To:Subject:From:Message-Id:Date;
	bh=WjrMHwjof27qHqoxk/Be3+WN900ogS0GpoBcnKyGBQc=;
	b=iLxh7Oz9OhmAyTooeSn4br0XIDScdrFFDfTw7bYWBRfax2AOWGbFE/vCPUOyS/pb
	5XL3iz/+6nRUmjYI+/eghMnKB5jjtRI63iDx5C5rT2dkiIB6+ZHlkWSBX+CoNAcNP9S
	S7Ahzoc1Z2L89dD0z4l8hwLEAu36+yA9p5qyz8wA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657376212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WjrMHwjof27qHqoxk/Be3+WN900ogS0GpoBcnKyGBQc=;
	b=DsGvi9NJAiUoBVGGlQjJ40EwWrJofreisPORJuZmfsZ49kgN40A2Alf4oumgEdXy
	zBkhxkOqpumproz5OMtBwgJdYxYHeO3B9VqPL2Tf6PkfQY7dprgNMb1WK5HT0VdYqfL
	G5ZIF7+v1b1HjtiV/9iXotFtDUdGdJijjofpRJZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3520558-fed23e1d-6cc1-4d82-aaf1-eb698bc650d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ec294443911cef6ce19aff9e2276a237262812e93191b679633563717d0b69
Date: Sat, 9 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657376212
