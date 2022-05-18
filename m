Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AAA23A3
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 21:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652909399;
	h=To:Subject:From:Message-Id:Date;
	bh=pVpMqGRq1Bzpr72Gvc/92PxlI6QAPjpgTnuzO6WwQ84=;
	b=hBB0fWDYASN5rGkgeCUhb6Wvr5lUj0/F6zTpLxK/vMCsTugRT116UvwjI7OgLT15
	tf4F3tYGwrX+oZw3N1F1BpE6mPKfeMYbTRqaVf6DoZldc4SqpJZ0Go+ygFGhZYyHEst
	MF6ly72Eoikjnjph+8sRDru1S7QRzgxEvHwNu+IQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652909399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVpMqGRq1Bzpr72Gvc/92PxlI6QAPjpgTnuzO6WwQ84=;
	b=GkZlHgbDk17K6ODQk/smvZrMdajHJtEA/dF2aeRwu/FsvdJjeOqNYZydIv1wQ+uY
	Fu9yuMuy7kW0GKKTHBUfqypjFdoCKWqy4539PJEKABpPSu/MX/4LqZAsYVt1KXRMA3Y
	QbPKQqRGjraSaq86UAaLaorRaCIUmqVAGc+b7+wM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d913dcff-bfdd2411-5aae-4d21-952d-adbbf8449b23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f894bd9edfce42713b3f0fc46fdd4c1a8e922b33164cba5c4b740b03658dfcae
Date: Wed, 18 May 2022 21:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652909399
