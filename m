Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41317B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 22:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655592179;
	h=To:Subject:From:Message-Id:Date;
	bh=uNA3HBqeKlRQyBQyiLnA9tfcqEWqsq1t/e1jtdg9Pas=;
	b=AUud3SDlNGG0ay6Vp3LryvRJ6vEEunK6r0fp+ZFyJjJ9Dqtq6/lzV3tDmeo/fsQW
	cnoEnR8aKHAhkYDhjQyyZKk4rOg8Oj+d2KX1+187/ShEyODy6YBzWACsPo122nhT/2j
	t7gOyUEyIETz6KbOYs+ixJ4LMMSSgjc4nJt32QMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655592179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNA3HBqeKlRQyBQyiLnA9tfcqEWqsq1t/e1jtdg9Pas=;
	b=dNkLhLZ/K1QSX4qdvFqRP7Z0KjJFIFES9ghb+kp08mgfo+/IlFptHIfDTZQH4H1g
	uSuxXfHuqfwxIxYV1PDzIZC/sGytweuhuZE0vNm5idRY6DwthNf/tRostHGYVXxQyOS
	o8s0W2VIIAhgQA+OxD9RvrQR1HUUk3ly5MbVLh40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178fbd63e-f7ee1b8f-9d79-4021-939b-0bb409a41da9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3690600923cdb0c7a87a1a6357d4a256375ecd4018039ec35ab1e36cca05a965
Date: Sat, 18 Jun 2022 22:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655592179
