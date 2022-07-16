Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F9336D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657940212;
	h=To:Subject:From:Message-Id:Date;
	bh=G5kGS0+gNh7mIUqqras8QIZB1fqdHYCDblCUcTU27uE=;
	b=dVlUd728j2cbXL0RqueaQrEKzCO6VHYdnDE9nrCErdgSlaBTZfOq9PVO1paTlS6F
	uiW8YMZx04cOAJN1imImJjgDiK7/Yth4uuS3ISjPUmtf4+0GUxAwRYV6g9G0na7RSOk
	NJCgWTtul9Kt0P7k6YFLiMM/2Uds3n89pM1jzHrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657940212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G5kGS0+gNh7mIUqqras8QIZB1fqdHYCDblCUcTU27uE=;
	b=K/zJK8oHHL3ZBNms4loMpTllr77VmddRDTPbkW6uCeJ/7ttxN4AZyD88gtXdWain
	n55ic/Mi9notEdjPuwrM4IunXwPdD3HHhoQSIdJeHFOfzpC6eFMAxwoMpuBqJ/uhmxN
	2/bZ0v/b55rDiKFHukh41nW54+A9Y/t79H5Rq9HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204effa22-1f308777-cd36-45ca-bb6b-a40c8e93ee48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa01a71b0b0f742d834a3833fe7b9f53c103103647723f31f51155e7f9f23bb8
Date: Sat, 16 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657940212
