Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1E17B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661246453;
	h=To:Subject:From:Message-Id:Date;
	bh=6tUfpHwaDuzzB/5zmV0dOre4ZfG134+9lAw2gQnGz68=;
	b=HFCt41RBin5kEuE1EhZpOZrq4skS4otgDlMsdFCQz6EZLu0Mtm+uB6ambTPUqnfp
	It8lIyg0KQbHlsRv5y4GcblrJj08PRj12JkfnrditF1wfKUJ4ikJYw60u+4yOWxuRHs
	WbeKqZpzbHANK06FmnHQhLw54fbJKyBX9f+j4U54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661246453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6tUfpHwaDuzzB/5zmV0dOre4ZfG134+9lAw2gQnGz68=;
	b=RNAuq0nyRdc3UULValFhz+gQ80gn3R9J1CjDg3o+OAKVARAs51KIj1RVTxDnaJGt
	8IXmocyjNbqImwazpCwpE2GnibVSPjtYg3cApSl96sPSdD6YOgAztBV1/epYVzU6ZAk
	wmVYWjQ/WPlwiDCW2A/BcZZ0qUtvyFHHTynfwxdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca0133c5-2723defe-8c64-4cae-a3a9-4994d31e94e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f3fcedd5cfb09ba9362d611f0c8dafd6a811a6bd5122eb3b38e7c105b73aed8
Date: Tue, 23 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661246452
