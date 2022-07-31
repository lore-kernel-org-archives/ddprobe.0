Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5725D15AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659258652;
	h=To:Subject:From:Message-Id:Date;
	bh=L+ILe6Y9OZ+YIabiQMjXeZLvxAYkiYP9Rj28zUu2xq0=;
	b=Wr8EFbNhzb9t0sVj3/85p2dapQUwuIwRhf1tW5ofx4dA8BRtIMFHzuyBh+WMXenY
	L+bv9ymyP96tLcBgTeFFWAl2hc4fanewZeDG0VleK2XFdoCwX8uKMHXyLTyu85WFXjX
	OF7EU5AkFW4N4GBvAUNx/4izqKrzl8zTRxH4ZeIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659258652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L+ILe6Y9OZ+YIabiQMjXeZLvxAYkiYP9Rj28zUu2xq0=;
	b=T8JIcLnaOoY4VpfJ3FldP+G3qmPb9Z0AkPjJzDgdnsb4e7Q8KyYttWEi2J6jHoyq
	qvtgCcIFrTLEZnsoczd0v/6TGnY1q1J1AwjX4W7ejfEQTaGho423IroQMlxnq9iy43X
	/5lQozlURkrHCxQQpO9fBO7S+Z2Mp3nF5hVLGjtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825385c799-e6eb08a5-bef9-4e96-8468-f19d75f04aa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81b4f3723e1abc3d17c202e9d0facf7d3db6ae845d8da4c3beac5e2a506caacc
Date: Sun, 31 Jul 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659258652
