Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B0033CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660327252;
	h=To:Subject:From:Message-Id:Date;
	bh=2x6qXnGlC0QFm9CSMoJjFxNjQYmo6r13LIA3l4RhTk4=;
	b=isUdUevaxbR6g4i67laTKXkBGVUNXbKuKT9UPt2+urF3zUMZcVpMLsyi4XRn8/qg
	V0rEwLS4x+gWPkAhXdGBCB+U4NKa8GxUuYlhk6R4Lsix2NAnR8vPV5TuFtWsstLhKDb
	aCA0PFUdE7a9qwyOjw7MUWYBVGFoYFjP3YoiWoPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660327252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2x6qXnGlC0QFm9CSMoJjFxNjQYmo6r13LIA3l4RhTk4=;
	b=KA4fBwowE1727f1wUmwKVMrNOOVZLhrFlc3YPOkx4a9YboPBi26AhIDoE98Y2FMj
	1awP/HSJYM5zTfRaJ6jy9KzMwUz5jofopoD/RUt5kDe0L5wcdmkWlDWS3wW3gr4rdgn
	HNQQiR7cB7yz4NZbiNGV0r3eWFvxRuCItKPVrWuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293375251-dd11a0e6-6d55-4fe8-ac48-b8b2d2e870f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9e7af82e81319763ad8579e6f28073a4e0ead71af5c5f45791ba87ba2519f4b
Date: Fri, 12 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660327252
