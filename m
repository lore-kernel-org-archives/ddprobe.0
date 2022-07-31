Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465CD15A9
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659264052;
	h=To:Subject:From:Message-Id:Date;
	bh=jlWtAoSezysl6eHfKBbmvUQSJG01brQ/6RFmt21alUg=;
	b=TP30tp8R6A9mlHCrRqn3+yK5GBJtlTXp0apCmMmqv02LKmrjZhz//9O2JRR4T+o3
	unLr3L4R/kIaqOckBVxBFkmpZCeoLpE0eUH/3W1/25JzLmaB+P3vlcuzlHKYhlOY2de
	IGgdSi0SAg6k/0he3zveVDqjm64ZT90kpwWehQ/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659264052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jlWtAoSezysl6eHfKBbmvUQSJG01brQ/6RFmt21alUg=;
	b=ECpDdhcdhxqIAQLltfhw5waRNEsouTFRxsdn4lHmmMjeAgiw8ETYzS5ImwEAOq/E
	rfi7eI9qImas9A2q20GmOZcC+3/194w8w0fN0mHkFM1VlSt19I7uZzy5GEzX50wTC+S
	A3gmwYirZL3mFF+XbKA4BfGQ+Lk8nH3NaPaKemkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253d82d2a-fb7fbc88-47fb-4c6d-af08-8aa531e023a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f883f787fff48001ea421b2a5cf08abce1484639e2bd934fe0c16b7c69ca45af
Date: Sun, 31 Jul 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659264052
