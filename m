Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0394697
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656028612;
	h=To:Subject:From:Message-Id:Date;
	bh=NBHyU/t9l3HtULdd7z7JCcWkeZF+T4v6BY87d+dBm58=;
	b=fJ3P2uSi0Ile6+dt2jK0VpbJ6pQoM2BznA7KHBTCugdEKlV9CNYzHM49Sdx2DBGV
	FmrFLRBFCeuk52on/upY3pHY4vlJiLlQiBWz5F3b9jKe0LPZ0AdDO42wQdvvDnSsouA
	hcSiI0Ok7BdwCoNUw1/KlO0RWxIsYXrxDM8lTh9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656028612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NBHyU/t9l3HtULdd7z7JCcWkeZF+T4v6BY87d+dBm58=;
	b=abHFG21UK1F+Ak6FIEczfA3Q/16B6Yjjp8XfqZMbyImdZF+HS/FhVkudTZBY/z5B
	rUlCL29LzcMJCKYRX2UPFAafaLcQhaqU5fCjAVF10o6dbU77WgSwXfo2U1Lkj7lFbqW
	pnMtS2894WooNWNbMUIR5moPgY18DPr1t/mPCdg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192ff46be-850563a7-5e33-4c41-a45e-bc483ed7fc37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d34d0dab95464c715baff1f5df15ffb2aa100e2f53dc0c43ae953869defa676
Date: Thu, 23 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656028612
