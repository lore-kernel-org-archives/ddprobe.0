Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73FF28EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658429212;
	h=To:Subject:From:Message-Id:Date;
	bh=875zKGr9mAiWHe0ujqHGpNGXjchsbJz3SGcjWrnHhUQ=;
	b=OYhYPxx6mhSofg9uJSdlUmzXX3ebCHbbdsD7hJYRbHWaQ2HItHjwK0pdfAhEQalU
	tP1Qd/4mpaJJBws6kqVAFQM3kEfx8Kn5bwsvvYbCaCYFZHuSz8IjDjzi82JULhThzTL
	uSQP/OkGTD3B8q4MfvFxw1U4vPPe0MwQHuuA/EUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658429212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=875zKGr9mAiWHe0ujqHGpNGXjchsbJz3SGcjWrnHhUQ=;
	b=HgwjfUsiwuPWyS/SlYsjmGqXEDuBwX6bhtu8BxtX0p9uE1Ju1+rMfBWQUgJ//cgQ
	4TbDjSwFN6wv9CGGCNYsqmKE782Hklv3VGjTIpDOZc87OoKk0E8b3Ba4aa5pPktOO78
	6Zd+Aa3k805Hm8y4B20RDHnqbFONOE+sqRsQoatc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222158681-a1869578-b8c9-4686-bbe7-3fe975f63bc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c6c4c665ae95572146e7ec23c2dfe6c4d74f3d4e4e14232cd953c6a974184ec
Date: Thu, 21 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658429212
