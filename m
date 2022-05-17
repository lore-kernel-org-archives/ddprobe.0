Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281241847
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652802479;
	h=To:Subject:From:Message-Id:Date;
	bh=ydzgD+QNUe0kPAPnRV/vAacYjSfT5djP6EeiyKiOuSQ=;
	b=JBw9xOH8ut9Y4V5jFqFbeNxglEmREakmD8Q0PJ2zvuFjRUSfpnGI4EIa7nTpOPkx
	aAR3cFj/m9sSsjjBi5Bv9I1VyzmVlcQr9RzjYAL5eb1oZXhOzv0UT7J01pRe1zI/Hp3
	zNadh3mGrnkZ/AVeTu+ai+UxJwl6n9fDb0LVQnL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652802479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydzgD+QNUe0kPAPnRV/vAacYjSfT5djP6EeiyKiOuSQ=;
	b=NP8FE6R3UIMVSNbfrllWvpVZbRvSj3GodON5+t8xAOB4QAP0zvMLqoKGBfTYgcs1
	wAjfeLc8WVVdGQDSayI/UGG0LVMw0XpHoW1HkLATpi4MK911iRFOMNh/ni6xRtIISrQ
	jcJjV7BdG/sHt6Irp26HkRW12Zw/Y1+rSkaNC21A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2b464da-1e10b3b1-91d8-4f93-a9ea-c47b862b59cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c86a535addce96c8cedf7d1fe8b666b12dcc7401baf9d7bf189c0c85c2a795d
Date: Tue, 17 May 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652802479
