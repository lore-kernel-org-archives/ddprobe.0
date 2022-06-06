Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2249C33CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 21:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654550759;
	h=To:Subject:From:Message-Id:Date;
	bh=nAK6KjGYZEYQ/9m9I63YQyk/2vTsHg0c7cWLFU3+PA8=;
	b=XZoGGymVGgjecnE0Mic27issNNR73ZB/O/hTc9vRjhf2Y0NjIn8bEOAVz2wSVvxY
	StUpzOFCF0eeGKcOcgbNhHcy11/N49UCi/mFlCdcXdoTOIzJ9Q2VNoNgoueiOERLC4O
	ui9tCUZgUrw9gIZM3eh6XgKjPa5lgY8m4FTKOEiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654550759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nAK6KjGYZEYQ/9m9I63YQyk/2vTsHg0c7cWLFU3+PA8=;
	b=O9E+PXnvR5VrPYWQJglvOSQGDxjmA8gJe6j4E0d618utQ8yv3xw6cGIKUh3otpNd
	2c0p9ARb1QktiZYaNJqXU4M6d3GgowsPhZ6aBsKbc0vBRKojSZvga6GQogovekxJq6k
	PRST5Bs7Xylrp3cr7jawI6CEqq8n0WeFdW7ROUyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ae907d0-b0eee7bf-307b-4fe2-baa7-0aa2a8583c28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd6cf8249a3fe8764c674e8451b971e9bce94aab9a6dd88dab3cf9236cc3ac6
Date: Mon, 6 Jun 2022 21:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654550759
