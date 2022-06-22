Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6E0137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 11:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655896019;
	h=To:Subject:From:Message-Id:Date;
	bh=2yawfhLbvg9e9AXfTocdDsXTRqA4Jlf17eENkwfjYfQ=;
	b=fQe9JvmEaJHHOFmUcSZfxVU1dErp8rQOkNn/JIziHUDqLmvC9QojTAFGODZKJwtb
	B7YHfGh/JqeUGyc/nhUVqPDacvtF2X1gduLW+ovTN/c2lacQEYFq2C5eEC4dUA4EiGY
	HUR3fsXZvrbKyHA/tP5yxdFZTRY+EPtdnxnbL6Ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655896019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2yawfhLbvg9e9AXfTocdDsXTRqA4Jlf17eENkwfjYfQ=;
	b=g9zdyTGhMN0PhkAQZzOqV6BJxwWExVTNWuiU6jJu79gjGx8O5gmGmF3aSovuEDM4
	fS2Vyqq0TsBOhQz4ZS207FB0rE01za0f7AL9ExHKVkvdppjZ+wpwh6cvX2yszqheZIF
	59GXFXu2tzm8Dv9k97mPLNOKLa+h0ZpFjbkINvGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b1811aa-d9040b0c-6f26-4769-b150-742fa4627f4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14eecd2967721a4d18a54ae1289c9c87a48f25a58fb78eee18ca48cb7577cff4
Date: Wed, 22 Jun 2022 11:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655896019
