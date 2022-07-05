Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8457C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656999412;
	h=To:Subject:From:Message-Id:Date;
	bh=lJyfceoY36ZMx20TreWg34fxV0C+JDhD4wKhqk4FTdI=;
	b=beDGgkJcA4tZdUsqzt0/8GXu9xhsCxvnx/Xsjh6ixk2xuXMh8PCHZuRl2QDVBEfc
	UJJSp+e2Z96AKb8nlhhiMXlt1jkCFT19pnCYHnhvv/frxZOj8Bvn4qeNpBYdJLJKGvx
	tuyQek9XJi2QFLrN7UtQVtO/CwQgwEWNt2JdD1II=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656999412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJyfceoY36ZMx20TreWg34fxV0C+JDhD4wKhqk4FTdI=;
	b=RSJ9cd+gx36u8hcP6NhKukEVxkTBVTtI/cSvIW0/r2nqLSWsz/Q0GxczvMFmYX4s
	GYEnpLVP6QqZ8GisU1omFEVxYs2qvK9nUqbYdkxIucV+2CFZ+tpq4WFygv7zfB6ifZY
	/iXidB9/VKfqimLculBQAuPUdJUj/ZAVgNmz6Kq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccdc8242-52dbe02f-b935-45b5-bc0d-1a6ec23e1932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3cf2ddfa1debaeedd92adfb15a3c8e884e0a3b3b90d800b0ed8100a3866ada0
Date: Tue, 5 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656999412
