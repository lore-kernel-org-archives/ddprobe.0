Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0626C7E3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654150979;
	h=To:Subject:From:Message-Id:Date;
	bh=qKKg1OYkrHsFZHHzajjZssKr3w2E0ozBGOazlbBcnSM=;
	b=cV7IrnhItkaqImN6zndlW8fulwwbNBKFEOkoimC9DxIg3OEF8m6o6ciuXa3+tYLo
	eXRl/K8Ut9BNdrVU3Y5liD2NsKlVLui7hcxuEa/zk1xVRAoc6FdyVOTr3I8i/EikfIO
	jjfiIbTPVxyXII2ftbiQFUwzqj8jUCV31ivjH57M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654150979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qKKg1OYkrHsFZHHzajjZssKr3w2E0ozBGOazlbBcnSM=;
	b=JmgbfohIwgOAcAleol4qOIHXHxg+rlHRMI4POHDxDFSJ7C1nvnlW/qZ/vufrs1LT
	p3sUqvicCsvIwpmTuQKBvfcEVW64T39GfoS+UXH3tsBYQBYA3i8F77TL1n2JGHlbccL
	rsZb3ih27XgKxyhdd3aCLZNAOfz9ob8iHA7TcUkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812314dee1-6975c694-92e9-489a-8e3c-35d9c8d6d931-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b177cccb70a2d5e04aca4620c3240c575eeb0142d362823fb1deaca0a97d00e
Date: Thu, 2 Jun 2022 06:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654150979
