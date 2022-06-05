Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B291FA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654446479;
	h=To:Subject:From:Message-Id:Date;
	bh=ZsiRW1se3PITC1y9bXaRyA5EZqNZLOuzqQj+k/tU/QQ=;
	b=XyJP5LoBPfshKCJKY+hviBmiRQIHRM4oyHZlVgQs1OWNQh5mkS1cfqg6o+lafYVe
	XO0fDoeXgPCU0IMOtGqUkb0QXk3nRT/Op5q9rahXJ+dOJQ+ADDgWdAuQ+um7Jx83Ykb
	viKl+Jb2pIq8vvm7JU/PfOVLS8HvAxqpyC3XYpVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654446479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZsiRW1se3PITC1y9bXaRyA5EZqNZLOuzqQj+k/tU/QQ=;
	b=AAXXpH+FIQkidqi+2N/Q60m4vYYa+zxWshiNhi0bttlk87MwBuXhCm+2SAn+7U/H
	tPNLNxaCtBi9jOq+pmSZ043y6hnOqse8aqw2pPgfq98JOSOeysupYalgGvC/o6rz112
	9MJL6JGKT2cJUKdy5G3zZvYaOJU7XSuu1LMcQ52E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134b1d7bd-f9ccd9a9-a29d-4e17-a41b-7b94f38bbf47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd468bc4274a3cb8cddf18c18014098e184ca461da34e3980aa3d30adf3d3e0
Date: Sun, 5 Jun 2022 16:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654446479
