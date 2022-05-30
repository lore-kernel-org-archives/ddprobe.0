Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2FB18D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653922319;
	h=To:Subject:From:Message-Id:Date;
	bh=2KUxf2S0Rzzzi1zYYDvDPdmZ9zfNFdCQ9H8+d7YfWrc=;
	b=OGQQRrLVYYpkcTBZ/Wg6huqeDKTezCinqPQqgJjhVmL7DDmkpQ8TpnEHmsLNUaH2
	Zp594oS4VMKgyBjq8KJVf1bjBNzYijN7Fms19AglcSLUoBx314okgDgFkLTIxzjmRzo
	vPKIskRxwao2cT/SCfRgltjz2Zz4K6nHV/LUyim8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653922319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KUxf2S0Rzzzi1zYYDvDPdmZ9zfNFdCQ9H8+d7YfWrc=;
	b=CJVx1BRVtOKvDoE+WJXM3+R66O2D9aQ7HRTmRVD7pkhkY1LzZkC1g9dWj4ftLAp9
	tmz8eT9e8sJByGYaGIj+LHxMbjwc1z8FYaDBfB1bzUGSinFtwT5cW9pTjAMNU3hl8m+
	2VDJvMzTXZo+tZ9y0HxW/2P21s7Uht2qaY3/jMIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811573cb76-57840ff2-bc04-4110-a5d1-b6771a83ff79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d1de9a2f70fe13a680ce23d4dad30dbf4991ec1c196d1fe90271f3df61fad9
Date: Mon, 30 May 2022 14:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653922319
