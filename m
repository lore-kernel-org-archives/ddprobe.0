Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BA553A5
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658265412;
	h=To:Subject:From:Message-Id:Date;
	bh=/lrQo9VM64n1r3LjjXfN5KP3C0rVB+lmMKwQiEiMyq8=;
	b=SMgvulI+cuBvtRLKbBPZzt4WpS1xWH1kJY2Zi25zk5/nGpcuIaLhJQw3SqA7IkDX
	VvopoVe+Gh6lq1/AwJEIclYpAL9eKNa5y8widO1EK1bQjlSfabLK9OcJ3yipM51hj6A
	Gf/1EEdQ6uHNiu4PW16k7iQmJLHwxeifP/xMzJF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658265412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/lrQo9VM64n1r3LjjXfN5KP3C0rVB+lmMKwQiEiMyq8=;
	b=SEITRmaSwRV+ZEyi+5VykiSME4O9a1jP1GceSL0LDQ4+Oq1JYwpOOQ3L5Y4Fxjle
	lSxnzZ4YLaLIcGnfkp4NF9t0nTkxzbPSIv33U4DRRXG9WGZ9NcRMEjs6dhS/r27bm/a
	qUEormaFyXDmhrlKt1YvrMw9P2LwXWm7++ccsIPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182185222ca-c56fded5-7375-4b79-9c27-917dffbe9658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24d5b18f60cc67eec70a1e5e2d05d05f76089d1fbfb32446adfd852e5d2bbdee
Date: Tue, 19 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658265412
