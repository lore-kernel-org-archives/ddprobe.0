Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E07ED1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655109059;
	h=To:Subject:From:Message-Id:Date;
	bh=3TC+nwM6jsBaKLWvC5oyuM07fDJxRqlzVRYp/iTcdx0=;
	b=c1pnH8y5tfOzgw69jhHODQ3YKPaCvWwxO5BDS4c9ZOAdbY+3HGLQxHo+io6KrbZf
	EGOHh2rQ8EjJveTyIY9TYmAHLbEs1tD5b1jlJPuLvVwAhuxmVcXIY036tY5tRvZh479
	2Fy5FYP8QC/ONhiF6kJGi+QNbYWXKVPlEB1Ke/Y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655109059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3TC+nwM6jsBaKLWvC5oyuM07fDJxRqlzVRYp/iTcdx0=;
	b=AXA7D1llAJvvsThprdhnSVTMyZ0xnHHY6EhyVo4bZFfc7+ud+ZCQku54nwEnf2nx
	hx80fvN27taD0F7af0goZmEqDTcS6T+cMW3fiWpY4TYwxoIlraGBkxgRvBRKmqpvfKi
	dr5jHfcfiu1SSMIlL4LMJ3JCwPB42RibrCgc2VhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c300272-86c4623f-48ba-4507-b62c-1adb9e95b5ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93881bc51ca96acf2105ed9d1ed7fe67013b471154434c42bd74db337be8a909
Date: Mon, 13 Jun 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655109058
