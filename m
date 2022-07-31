Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E575C87
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659255652;
	h=To:Subject:From:Message-Id:Date;
	bh=8KHrpkd1xp7C0spuA0yQTSfctM/Gk2xg5G2rTrzpq30=;
	b=Zj4xyo14gCZHcb0HQao65WOhiS9RMdHfYO92GR8NpG4v6/jm2YFBPy/LgEtocXMr
	HFP7YZ5FQPDbR/aI6fig50dZ0jcWFK4KCYgp9J6yUSYmmfF0L0dciHXY3IHkujd2nUm
	kKlw4euc3rbsHrm0TKY+WB08NRtnCrWeo50Vo3uU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659255652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8KHrpkd1xp7C0spuA0yQTSfctM/Gk2xg5G2rTrzpq30=;
	b=GZaorubx9hIw8F7IOyuz8HYC6jMTZO/2cpaBnzuyuC0R5T60FfL8zdtkGn/EADtN
	10KVNhBO4QWyhyipqHsujk14su9O6wsBJI3H8z3ZhhECT3/XiOHf9CN223eI40sMe8U
	VaS0XPjhUwcyqlYKErcTsotIGdATfSMs5DHqZiHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182535800ce-7bbe664e-2b5d-4574-bf40-04977d719c0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0266eb463bbce703c8b6031b6648a226f4c718b9245bb1e4453384c8afcb71e9
Date: Sun, 31 Jul 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659255652
