Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FD37F0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658867452;
	h=To:Subject:From:Message-Id:Date;
	bh=T/GSoz+Wx4ciC21J4k4COwAf1mebwmUu1+LBj+Ws0vE=;
	b=YcGtfZOfcXMNxs+zWj1yYS5Lu8R/RWp60GmEeTelOknHpjL4vy7LaTrQl5ZiYB/r
	iyEkUS7BJX3LiGNM2JdeExVI8glZEMpi+KHyVvost1Xdn+RUluVAbGY0WGZfiqdCY05
	KJXB3Q8LOebmwoque3VOjqSqDlegt+/G/rIxR2Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658867452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T/GSoz+Wx4ciC21J4k4COwAf1mebwmUu1+LBj+Ws0vE=;
	b=P1FE9priZSq+2xVH7VHhp38QGNZZv5Xik/28iyx2AYmeZKa1zfSC9JwEnQU/djNC
	VlzJsVf02E0dm3MhJZOk6hH2zRcuxO3bgND6GoJdblhvFz5PEgpGg48wqtrk2BBdRwb
	XECWbQ2NNRZ8tD8DqYltQJY7WSZMF++Re03XApW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c348ac6-e2f6152e-a960-4ad0-9560-0a66f3a98b5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e51fa862667f0e89c3d4560ac5ac6d5a6d9cd7cf6b800f033840528c6d778d3c
Date: Tue, 26 Jul 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658867452
