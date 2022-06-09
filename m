Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16484210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654769279;
	h=To:Subject:From:Message-Id:Date;
	bh=gGZLMBEYT98Hhy4f3HR1MPsS5YLlY6z6GUfoNn9dYMc=;
	b=gzUYSguuuaQMTCXZfjTa+Ego/5U5nspOpIY70kolVU3s0mQYiObFZA7Hl6ta0F7H
	mBIyTGldgAAZ2whld6IvymkXPNmlXSwiOjk4Whnf4UvEdCWMX9E5WpL9x3Sb9FnL1Gh
	sct8hobrv3YE4+D4QJTqjDxKJZXzT9EGlvESvfr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654769279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGZLMBEYT98Hhy4f3HR1MPsS5YLlY6z6GUfoNn9dYMc=;
	b=N8Qj0+uBzoE4Z6Farn40JMNvlTkxMu+Fu40G8MsEls4NZFo0Ok49Tu7dlZ2yy9ud
	2WiXO9qnALdkuoGvVU7daPNVHWG+dsT1Q0MOL5VdUwUBi0fg08536V6XuPS17zSAJvI
	6TRT5j0Pq69P2lHnHPhxwsq00aGiXllievZ2mFl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147ef60ed-dcb70494-eb00-47d4-8cc9-447f8d88000a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e64bcfa72d8b20d3598453b81298d6c2cbf7d4023adb35dc3caeed70fc727ec
Date: Thu, 9 Jun 2022 10:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654769279
