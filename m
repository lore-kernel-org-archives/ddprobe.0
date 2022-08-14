Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8A01392
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660496452;
	h=To:Subject:From:Message-Id:Date;
	bh=k6SlFID3ej+7MN/LRPn3rH5JVC7Lld9E9s/p9MHii8k=;
	b=Bs5BrTWYCE898W6zD9BqPtJnEhURhK9H7dEFyBdkC2V4/3wn97Qqdq3DQZSucSsv
	IELuFL3u/1OMsPKu3a0fApA7j/iAyd0dVNzVfaA8ZQCxxEDkqJ2jq7ePy9GiQ0jdf57
	ZYSuMwuovfpyzrcQw7OZKQSmSTB/RcwI2kJvuUzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660496452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k6SlFID3ej+7MN/LRPn3rH5JVC7Lld9E9s/p9MHii8k=;
	b=d/+3RM6VCBo9CP1+Jy71W0RSeAnW2U5X4xQphOrfhdn39HqAN9h5dKUgY3+1zMMp
	ZN5vKpH3sdAvui4ydhSRloMYuQKMJFVLwcvFYvyIVGleJfY19MHCPT6AKopZuIkvr+N
	Q6YOzty5oZcukbnflkh71z1B33JoCSk/t2pjHwqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d4d1be4-6040c2d6-bd26-4587-8fcd-bc0f5767f21a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d523a3e7ea78a6dfc4b4cd5207eda5ff220ffb18e63e619bda2ca6f2343673a
Date: Sun, 14 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660496452
