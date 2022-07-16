Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B607A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657952212;
	h=To:Subject:From:Message-Id:Date;
	bh=lPgBolS0d6Pm+KQrFvxiE8SWQKq5xrAEneZkQlTJB1k=;
	b=PAy81lQIWSi3QVJAUjDIjOscRikk2+mXfuNMzrrdr1HZvtnfV7Wwxa4iF/1oLs91
	0yKIjWQ5cP5KcVc5cBcv0hAvpowyAy7OESOgHbI7ax/+VsE5fNpVc1iRK8wqWctHhtE
	31RG2dqMxfqquPjJ+sZ6XREA93sDuCqOoksmsDmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657952212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPgBolS0d6Pm+KQrFvxiE8SWQKq5xrAEneZkQlTJB1k=;
	b=HLCJpPegAgWGrtfePJI2XMj6+sJrbNsD2urw3gGH6PzSBjj3g0kGUJQ12ZNncFNR
	vFEHA2KppYICE9ypD3znW58TUXBdfYoVRNkvQiQgvo9dQ3QrQpSd+imtOhHfn4u0FXY
	sY/GzfVZcwp9nPoQ9d3Wses6msujbMJaXEBQYUwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205a7153e-0c0886c5-e5f3-4687-8907-a9d36baadc75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cbc07fdfa16cececa09f31b4e6e6db905ada98cca67a830e196e9c058191032
Date: Sat, 16 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657952212
