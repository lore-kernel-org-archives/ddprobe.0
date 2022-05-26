Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE9EDB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653575759;
	h=To:Subject:From:Message-Id:Date;
	bh=6EOuHZNhUsgoZ55BDXV+6t3wGswirOcMK6gSGHHfYfU=;
	b=KjY4aNTq8147//pJGRrZZ57PGxMB2OPH6Yg35bccZBwr89mGo6b3PWwTjSJ7tLYk
	B5MskSxdYuo8flYmt4BXjMwhZqvGO+zn4aeAe7qFzpzDzPhkKo2OV41DmxVNYbn574B
	hck21L6SMHPiTjGQKptIwizr7JHnUl1GpmDGNdSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653575759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6EOuHZNhUsgoZ55BDXV+6t3wGswirOcMK6gSGHHfYfU=;
	b=WCr966vqyeYLUtuDkVjjf9oFSr0WRDVzlzsqJocxoJDarTXJPEw2q5SJVLfiqSm4
	jadAatqWLlE7xhF5dzuBtAL4V4i0/5ufq1/ooakCTD5wlLqxWdENOgUyQKCwbafDtLo
	L/UnffN3oUqJBjz++hGn1Ho+tKIUDLKmke58/EGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100cbb591-cfc8b4d1-91b8-49a8-bf9f-d0465616ecc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5b7c41f0aa961a382433186bf910d7bc8d339aa0b5709e5665fd8e92cad35ed
Date: Thu, 26 May 2022 14:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653575759
