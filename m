Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEF2136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651956598;
	h=To:Subject:From:Message-Id:Date;
	bh=nJQcLWktwzabtJMl2obiUV03MFYy1Sk3DHBeq8rtdyM=;
	b=jtKu8Mbs+ptZ9kbyCvBmKdUU0iv0AJNPVxK0+L36zPDmIh9YpshfasOKHswq4dfn
	7KnSBTtxdYgM1BZIpLUZjQw5lOcUac93OuMTK7wSBmgP0mH7gBGNq5i10eEdSXCjEai
	rsMjo5x5iD/ey8gLhf1I5l0ExysTtvyfNOk2V974=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651956598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nJQcLWktwzabtJMl2obiUV03MFYy1Sk3DHBeq8rtdyM=;
	b=PkhAN37/DhwgLl40jrDuRzE0tTigIkR675VEEvkt6mLOX7q3TQ0vrtUZgksiVJbQ
	rI4guhLkKCQawsEiTcAeF9nyvGUOZImwMrAPCIWjOxW8nbnBhlUSCNscnH213vG/gLE
	hWV03YrbqAV2tm6NRfbSqp1S0M2hXOTpVT3JI5EE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a049460e-5e98a694-8c48-4a8b-a206-c21974ee4d9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2d95100f04b251dfaf278841bb651bc8c089aabf0beb0f637f65f897bbe9e4
Date: Sat, 7 May 2022 20:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651956598
