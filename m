Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423A57B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 03:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654659299;
	h=To:Subject:From:Message-Id:Date;
	bh=iD5aCPGhKBkagR3BS7NUS0r9APSNLYX/vZUktP+7PAQ=;
	b=FWCOGd+GdT3q3+FUWUsDxxpvJa5f7W5mfddoyfmGFKciV2MnOje3nuQegEy42UbE
	kIupxI8bBheEWZpjBjUSEYjUcS5mSP5CQOZ9j6BtKzzg+WjaiV+d3cimz92h97GVXuQ
	aLjckPYYU/7dHf7gHe+GHujI+aPqqQjRJPRKQmMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654659299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iD5aCPGhKBkagR3BS7NUS0r9APSNLYX/vZUktP+7PAQ=;
	b=cVK5KILLMSb8fL78cpD0eQlxf/Vnbn7linXh9IcLHBb64k9fvO1xDrRhwWlPfxcu
	5o2zLDlfCoaEA149jWSIFD+IMWXXUqjBS40JaZ0gE0zR+wJzjc5teKoRnEuvEdGr1rP
	Q1clzox2PFzxSzJFHBcHAYww+1RnOLtTNLO6z95E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814161383b-792d15b8-a3da-4aef-9978-3f70ff2c5733-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a41a717a0f637654b56bb5d817b13f163538e6ebeeb09cdd10b17281ef6f1aa
Date: Wed, 8 Jun 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654659299
