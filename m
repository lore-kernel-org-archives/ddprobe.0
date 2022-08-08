Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4851F1FD0
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659927052;
	h=To:Subject:From:Message-Id:Date;
	bh=LXFr0/BAMBM+tuuglfI77jO8u4mPA+db4tqzFhxo9v4=;
	b=gCMVrJn9tRnq5srUqLkyhe7amrxux4t66GXDFDRk1570t5LrAFuBdSaOSWxbocN+
	HfUg4sBmq28OQchIw3Ean9yEIQoNepkufsQkB+0ppjVENvtjEAVjZdxChfsRGWcu50d
	MEC5xo0f8fS0l5PFzfa4SnszhCT9/IoVJvQBEoOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659927052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXFr0/BAMBM+tuuglfI77jO8u4mPA+db4tqzFhxo9v4=;
	b=SkJZq0fKAzK+eZJiNDuhlFtwSE6CMoHv7CM/a8kIjb5/qArVRAEI+QQHNlAT/dWn
	S5cVxQsW5dUnIwAtLqGVwAUJF6Ulu5eSQvg2ZY9odS73QzO9YbIBN3kpqEenBo7qHVg
	QA0+wPBYVFIwcB9+2GZhN5da8MyLDFlemEa6bpaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b5cc11a-c66d525f-7f79-4de2-8fa7-2378cdcb54ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82863af950abea519ae567cda0efc4ee48df77d2b7aba9bf1dc473ca19e017e3
Date: Mon, 8 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659927052
