Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DFB813
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 00:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652662259;
	h=To:Subject:From:Message-Id:Date;
	bh=BlpBlciL6bsA1yPsKGZ7YOtf3zV9pgWJUKQsZr7epJs=;
	b=Tqp4Kzbw9NnahxW1TXVUtf0U4Wth/dW7NdYMoDfPHPWpKUqsXMdkCH+vxLKxshS8
	qlGe2hy7uPe35TAGbr6CliQormW3YG2IXCbCKKmO3y8JxR07fUuWkmR8vY6kne6S7aU
	AgedmhsRU3d2FXnuQVSFvV8Rd0N/+m7AXlxzl/cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652662259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BlpBlciL6bsA1yPsKGZ7YOtf3zV9pgWJUKQsZr7epJs=;
	b=e6GE7Z/LMzXe6GbFI7SqLowHZeXPkJI88ryhRZLZ+8Spq2cGG+p99dygxbpE7etY
	06PW5Gad6vWoJUFpWYfgpkNfzLaXOuGxEcQrt3mgNxOZZddrEBi60b7f8OLtxRvEuqc
	aC2OEQ3rxMLM9NYTigsuxoAWMEQ6YTEOWON5IjlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca58ce50-42949cf5-b7d1-4214-ace2-e8663b6745c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3667000ec0f42dcfa586c89304171fcf81172c30b9ce18727d5cd7b3094d45eb
Date: Mon, 16 May 2022 00:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652662259
