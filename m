Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3521FA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654443240;
	h=To:Subject:From:Message-Id:Date;
	bh=MySxnyvpCT8vpSe0+xX00kfkBOVXZSU7roFG84GL8AY=;
	b=jJqsg0kWWD1r2VkXGQpb8USsZ7Aq+rzUB5yNCABR5sFHHZ3s9/+SGpHgyyUNO1i1
	qWsqYyD3JKTuIJC+hmXn12c+huj+B6TfLrg7CBTrkQ5wuQFbeoO08uC/1aV4jsycpmm
	qujvtoyJqsDaHJ7pwLwyRFrCpM22UNjWF+a6LBYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654443240;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MySxnyvpCT8vpSe0+xX00kfkBOVXZSU7roFG84GL8AY=;
	b=Q4btZw1cpU/bM2BAzNPHL1qsvStUb+bUbL3tk3v6N5xhhuLTyGvldprrcJp8NfiO
	N1KJtE+jXfj57l3h0WNTeWd2uWnk0Fp9j2cWfnjAt0AlGFjRqAM0LTd1jZAoB2eaZT5
	I6b+UqHUVEYL+2DD6cjmbykTWL/4XRe1IxxEqiRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134806762-43bce5a8-42ed-4199-917a-2c5b05b5135b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feb08225ee7c5f86113e648b5dc32800c612f786ba0924df4acb5c8ee5f6d70a
Date: Sun, 5 Jun 2022 15:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654443239
