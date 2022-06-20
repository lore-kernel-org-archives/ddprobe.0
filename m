Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922E7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 11:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655725319;
	h=To:Subject:From:Message-Id:Date;
	bh=GbMl1xY5PYeTBiytyMnqEylbgaoxYiojOdAf4V/WiPA=;
	b=Yhi+EB9escYvqstdp+CMxTQHZxmWSnuQqYSU4omlAh6ax4V710bGcOVxqqzYUESL
	7B38HlAcZLyjYcLrCH0GXkx/OKVMpMgnfNT36C6QEgeWUW6VGDzSxFf/PmWbghdMMDq
	KCvCdWjqRHk9g1CbGe/DVGw+zxuSLNP0lWzeLpBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655725319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GbMl1xY5PYeTBiytyMnqEylbgaoxYiojOdAf4V/WiPA=;
	b=Xwg7DXvt4txE5hyQVC5MCQSSN5bxMjEXuXua2+J/lUTIVeJQGU+fcIaYXF71T2MP
	Ol+/GqCXl5h3CJ8NBbUCD/KMv1U/x1z27RZd6V7N3qFTgBeUh0mh2IrtaZZBZxIadbE
	m/l2ZRgkJ6Zhop3eQFqeqLogwAIaIBCrBC0RGEYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180eb643c-9d25dec0-748c-4171-b5d9-91ae60d214af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 350cc8787263eca79fc60cd150f05af664563aa825e8c1f770edcd96577c8f0b
Date: Mon, 20 Jun 2022 11:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655725319
