Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A6B2575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656506812;
	h=To:Subject:From:Message-Id:Date;
	bh=EzzGOa6mM2nnuUcjKFJjybrl3GswvqLOVnEi7OE/paQ=;
	b=fuFpRhjapxc77NfJ9xb3ETXYumH1USkKUbp3y91b/LO3q/VCgFUsn72oVYLB11fz
	dB4Qc9N7CUoXdd7FJZ0h9SdKe7iZ16QwrvkC9LweRXU3L5OLQnAnvoOneem+LxjwhO7
	1C6UefBp5jaUY6maRa711OsmQID6Sn4AHgl5QoIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656506812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EzzGOa6mM2nnuUcjKFJjybrl3GswvqLOVnEi7OE/paQ=;
	b=SSIuKUicLpKUicm7PA7fJsICfWmb5oSW0MYt8kPD5V8z6+MSs5cVm/GXksBSVSJ7
	DZE61+jsYZm9uc7V88EUsnM7rc8IeRxqJRzmmEwh9UksSOcfmOGgNnqxIhBzHSJ50aB
	mCJhMNoF6tI0aT6pxLOEDx5h0Q+9uWHhRKapA/yA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af800778-3c22f882-0525-44c9-980b-bacd9d18d8af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cb057543f5ef1b4e4fb91672f9271ae10befc1e6e77c827bf6099cd91f88138
Date: Wed, 29 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656506812
