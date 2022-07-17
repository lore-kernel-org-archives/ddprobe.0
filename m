Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B889659
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658061412;
	h=To:Subject:From:Message-Id:Date;
	bh=yv3ke/s/8c05PVP5agRzG6v5Asi7Pn9U3qvt6/B5F2Y=;
	b=JSkjuOs2oSeCZQicx0t/iWjHuH0qegTd/5CpnkpUwvyKybpnH8v0744fNUwJx3RB
	vb8x5AO3i1nzBjA1GsOr7SqxbJkozjnhPBaTQIEc0OFwIlWGXJjNpO0j0kdJ+T+p2Aq
	WfVBOtdo8iSWsYnog1kQzOoFJYtjaw4cv13sJ6VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658061412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yv3ke/s/8c05PVP5agRzG6v5Asi7Pn9U3qvt6/B5F2Y=;
	b=Rifb8U3a9EstQ++9FvpHenaANY+4/g0Ab9rBAjhduus5n58jfZcaKk95aD9xnSVQ
	EY1lmq6DuDz/N3iEfzby0YNcb/vjFUb3WmG5NqVlD2Gqu0rdVWJbLesGjPs1qIko1oD
	j0TFW7wZ+Q3fnf3ymnmtkmn7i8owShtDoON+yaKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c2957be-90c67139-6862-41ab-8896-ec3f8040fa16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 014f5e63f7de1e9242aa342f637f29d1c5cb9850ea74ca701f1f1d0dbd46e98d
Date: Sun, 17 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658061412
