Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F921376
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657523212;
	h=To:Subject:From:Message-Id:Date;
	bh=dSHkglWDRi1fU4btoUKPG/cw97SYzAsiK2pwTsSvXTU=;
	b=OlU/i1wxFLwsq4pbnpVEtct2aL1+8tqQVkOXCNGzJi30IOa7uGIMP2URNbLjkW2k
	rF24Yc0R6TOUhbpv+Nz5XpZUDPClrf7qhI3J8Myyu+hSJEZGRynO7leuGcj8l61hd5e
	qIbWgiasePULJcttTT7yzjyNkXw0KbwV/pQV6BLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657523212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSHkglWDRi1fU4btoUKPG/cw97SYzAsiK2pwTsSvXTU=;
	b=DtncQhvoH0BB/IbwetiMenKX6s74HxUFllQkvgwfVui2cJj6jU3KY9TeO/lZutho
	xb76YEg7NJ6nFz/FoMI0Y9ZuvvYVDigrVYnqijKcJVi8sP5T+xGlrVHKGaoqnj4l38P
	1/Gvrrip5fgGN42w7/O8Ebw8vk/N7kB64mNZaBbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec15105f-fbc18a16-8b80-40ff-b4a1-cfddf9e1f54b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09f4b5edfa18edf29bf68a59cf851de04e54143815b50ca045d4acbf57cec96a
Date: Mon, 11 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657523212
