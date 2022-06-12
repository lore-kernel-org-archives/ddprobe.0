Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F323EBD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 10:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655028899;
	h=To:Subject:From:Message-Id:Date;
	bh=j///+iobK6TbBs3DcR0wp2SIgChsEkSTGgL/hG4dWs8=;
	b=KD7m61QgreXs0ssvFoCuy8N9BtI4CKHZcKgZRW/BLeBCB1rrZdqTO8OlJgm6Ym+M
	HioO11OyMu/reGL3Omsj6Mhs6r50fImj2OXjWIEvJdZx49LOajPTAKDlJoAxdb2t9WO
	iU+YNtdPwFd/QzMqCb/Wrxk0x7PYt9zgsA3pufok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655028899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j///+iobK6TbBs3DcR0wp2SIgChsEkSTGgL/hG4dWs8=;
	b=ivfcaSB1oKmpLb8V3w+IdV6NrqjxZfowJ4/HWyiVeV1R4y3wbWcJnTLGxVwFzOSC
	Sfuy2v24pWYIN9OznSHOooGl2b4ACTxY5T8C4mGjIsRnJrHE7ybr7/W1dVHHGRkJ2y4
	dJav8vunScJucuvSRICUq+b2z/Gsk7J1wT9XMgGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815768ddc7-44d4646b-6e06-4ba9-a043-d6af6c954099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea846acc836441c7f2ec4d4d373beb03065e6a90d7e35ccdbeb90e603f151c8
Date: Sun, 12 Jun 2022 10:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655028899
