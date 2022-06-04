Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F5CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 10:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654338659;
	h=To:Subject:From:Message-Id:Date;
	bh=daG/l7nDOAlsznvvnGdT9s80ynnem0Lud7EnCGUBQKw=;
	b=VzmJFLq/hS/kfC6pL7U96X5ZoXSZllKZKHtWP9vCBErS/BvPvOuGjAc+5FZzeabj
	ccVsb7piC+8amJ0B6tfc4/qUgG+VGewOwNW8VqlnZmUWyW7eAHP1ZFLYnpi56KJ6KxY
	LPi3s0AYTpDnooZ0Q3XHjACx1XImGv0D8fJOfQNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654338659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=daG/l7nDOAlsznvvnGdT9s80ynnem0Lud7EnCGUBQKw=;
	b=Yq5KnEQAUiUMKB+B0M/DCgDTCBuIOKOOJty486uvju7TqswhiW2PYY63UClpf+8B
	PCTho4N4ed9L4QneCFDGDbw24NfjrQBauRFi+IqQrTrjm0xTl00e188hkFGbLy0DcFF
	I8qI7WGEAdmsRYgM36LFGLxMEoxanfrvzl38LbCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e44a3c6-bd4660a1-87f8-49f4-9c05-2cd94ab600af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99f4d3ebe11e87227624b04c37a8e238d06ec912bd403bb2aa43dbe32d84a53b
Date: Sat, 4 Jun 2022 10:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654338659
