Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D9817E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658674012;
	h=To:Subject:From:Message-Id:Date;
	bh=Fp10Allx0LwXXwEdoXxY3roUMEu8/KXkLAbrrTB3S/k=;
	b=kC+U/BLmNDZ2MgVc8+nGVLzcB0tceZbHPYbcqTYlrFxPb68wY0z0BPUDOwoNM4bX
	PTGsHPQ8CZ+H4kCm3XCzN7+RI4qKpngfzK9zQNd8YXetBrCNcrN7mwttV1yRjDv3UmO
	d2wXy8z9d8FudFSSPlD8Fpqi3lZFmJFvA60zwafA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658674012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fp10Allx0LwXXwEdoXxY3roUMEu8/KXkLAbrrTB3S/k=;
	b=VDAvRuNw+D9f4x4toUH0SPdn0QBuWo9M2qJqeMHtW3bOldinhnafxOVlHucmPMZx
	JDIkkT+Bg2qfUzm3hvNZfuTVhD62r5QM+6XtUnaS9skj7Lpje+6da6VGWwG2FfLPE18
	vbMAuy2B8EztApln5gPYj5nR0/ZNd3MEFC1XilwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230ace09f-504d0382-922f-4ddd-9870-b80d8c33e5bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ec821d1c9f0432fcfadb621e0174c5897b33fa1b814602fb0e3e79e8a244d25
Date: Sun, 24 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658674012
