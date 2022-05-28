Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094BC7F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 01:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653701399;
	h=To:Subject:From:Message-Id:Date;
	bh=OdXXOQY6a61BFWSsS0bbHdUTfVulSKXMRQU9Sf1BJMg=;
	b=FU9pK1XAh5tov5Qw+lLQQKVU4d88xZMJI+2YbPeMWmOLkJESuDTyCMqbyMN+QBFM
	rosjyoDa8kT0ClqkdOz9nF8cY0MaYu/MKw5Y4l8Tnlvf1Ag6mngtKW24qR44gFi8R02
	aonztGfFAyL4mE9dBuPSJBrk/9sOOfo5KRIOvFvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653701399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OdXXOQY6a61BFWSsS0bbHdUTfVulSKXMRQU9Sf1BJMg=;
	b=FX7yZltsAulyUzT+qe0b7aQDHppbWjBPxWTMXxysdf4+ZUJOJkluu1up9pc8i2JQ
	gFnjYKixw6p+yNAvQ/z1ms9nbRSHrmY9fJPesxJlmIThD3k+3PrEA0vq5KcfnTGxrGl
	TGXvtJwzPhsoEc+LwxxnjYG5j2zf0UVK7GqL6JsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810848d2c6-a700c942-1f68-4e4a-8b60-4d3e75435806-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d64cdd373d33f119f4f404b879da956ae15433a86bb76dd7639d094807b67861
Date: Sat, 28 May 2022 01:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653701399
