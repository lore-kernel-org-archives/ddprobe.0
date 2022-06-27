Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006524C77
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656359812;
	h=To:Subject:From:Message-Id:Date;
	bh=mpSmHYrUaHSRrJ0jGktD7qKO95YyFBhVeU+T0WKGEo4=;
	b=SKJI8CIhMxjdsPll5KPIVv7Cpw7MxqN7M3Yt8foRl2FqZQF7Bfd+vydh3KdTophw
	yFfPJ95fh2gMJzlKRMX+xQJAtt5XpGmrUr2vXlfUx/eHxauhV/dKY/+3v6vs7ReG1Qs
	nDRBlUUkma/4AZY3sDG6o8VBFGQC4yZqr5qmikWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656359812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpSmHYrUaHSRrJ0jGktD7qKO95YyFBhVeU+T0WKGEo4=;
	b=gb1xoOUzuAC21DU7qZN5YLi30uWCDavgsqAkjwey7ygyqrxnnE5l1wLwe32UZGkU
	RGC5kzuFJ1hNhfqKfQn880cKuyoLIT7NUdp1a+Hma317OA9yVfbn8QXQYgljkjhLArJ
	tEPogGVJAzhiOv+/CCI5vh21Sdwhw1a6SHXp8+jo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6bcfc90-166b2d62-4459-40ca-828b-77e579523b30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 661c877e1604ff364df71960e45354bad18dca0ee3872c87b827d26d68513472
Date: Mon, 27 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656359812
