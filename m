Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1281233EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 19:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654801799;
	h=To:Subject:From:Message-Id:Date;
	bh=7m1W4nmd0cpeA3taUnv4k+HBqc+55/TA6WUw8YLDwYA=;
	b=B47DXgWqz6dJsOrTZi2Mkoj0lbJiAT/EzctMa8L6tnqau4XPvqPSKbjlEMFLzqaZ
	Ay97l3V7UbgmEhKZZt46Di7SDk+4UbgmPl7QPJuldgeEY4o+aFH4M8BVG8m9lPVAB/K
	t0VoCR8+KLkk+oBpWJmQD4jAFgKdTjAkuHwXoviA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654801799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7m1W4nmd0cpeA3taUnv4k+HBqc+55/TA6WUw8YLDwYA=;
	b=Srt23Ld/XvusvH22kTSJkzvAWVQacFLmjiRT03eSLEmCQ/uXRxaa7d8zKHeAamSG
	xd1zPFs4j7Tc0hffuB0z9/fKZhbuzNZOEes0ZXH10GaMz+XiXPaLPTXZwYqTmAj+Ha3
	n6BAhyuNChhMkkIGroIyaKlymxWjdb1qH9rZQ9dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149df9872-54dbb894-92e1-490b-b519-49fdf3ef1b21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32466aad5e858f34709889c9bf937c6fbf37e009a351cf041d01a5abf8b3084d
Date: Thu, 9 Jun 2022 19:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654801799
