Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF3228EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656077813;
	h=To:Subject:From:Message-Id:Date;
	bh=22f0hjgTxUGLj8jBvnj0ou/rl6teeu+UyUaZcgGZ3mA=;
	b=GuEm51jf4J1FTmEKzjJx7MckTTg34bGYdHdnOdH7dA+cT/HN1EZDRn+B+rNcpsV/
	w4DGD4Jnr5/iuOF6yMIWu6KZlZ2HEV5YDCmNiI5MCFi+U1cWpDZs5af9CSf7mGk93jM
	UTguw5YbGiEmakFvCZKnjEtIaU7qqGB969O+Kbng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656077813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=22f0hjgTxUGLj8jBvnj0ou/rl6teeu+UyUaZcgGZ3mA=;
	b=BUU9/VuHPRidY2jo0isKNQ7LK+8elypSB+BC5wY0VHImjp5dz4GG3UYoy3FGjExV
	wbnGgqU0TcJrveIoiKOGwTNRHDegpEIL0f2FiHLjOYSKyRKCnod1afsY//tYFlJ6WEA
	eC6beOFqPkuqnn8LAvkdodINSr1NQt6s+++uFA9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195ee021d-124f66d1-0647-4c65-aa6e-de9f7b38ad3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9f84f1c30be078f64dad099b6e82dc27ffe25904cca59941cb3cc8eec37de9c
Date: Fri, 24 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656077812
