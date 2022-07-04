Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69A468F
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656940612;
	h=To:Subject:From:Message-Id:Date;
	bh=qlb3r7ZBS5+zFoL4YU7070ZjRN8pTEQLc/I+DyZKiLs=;
	b=MSzPYI9+MLBVvevEgOm26mkRxTSW/spsRDDTjCNVylCzPfrolcotlI9wTqf6JdMo
	wIJqhf/lnhIy98q9lcGQgpnq0wGjuw88svv29uRaReu37v0zex+wSyDnIlLRWb3H65t
	SVgiJlD50qEf3GGZToLp7dcSDrSkJ7+ha+yuG218=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656940612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qlb3r7ZBS5+zFoL4YU7070ZjRN8pTEQLc/I+DyZKiLs=;
	b=A7MWC3pdyJTFOvQmPD0SQ4kzqAtIod0XWTjXI7pnlEJfkKSG3/aYnT71RDHB+HTq
	2Tm7BDvUzWqG8JpsYThGw5uGWz4ElJnM39VKSFuq/a6zcq64IY9Yjz0gug95T1iVKW1
	yX2MVlN6FmbgzbFEiCxudygX42W0sS0E/GbeETBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c95b4b01-9ab100ae-a25b-40af-8dde-a8cd93074d67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01d6ca3fc93cdbced3f64c84952171b3b2d610e400f755799039981d06abd0ca
Date: Mon, 4 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656940612
