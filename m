Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1034A7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657034812;
	h=To:Subject:From:Message-Id:Date;
	bh=+tQq11vKMyUUsLm1WV81o+T0wIsskpDK7htcnKmhYbM=;
	b=AOaQmzOyydVDMfxVtgIRFHD5aLXMj2i5803QLRTIPhx4eBj0IuTbsBQrpLHHMcIT
	U45e13TtdjCrS25l/62xLUQeuNcrowo9GgrH/I8+tTBe9yPC2WL8/mSu54H943nWg10
	Oa0Cy2zwXTkON6nBRUJuVSKpBgK3yjftMbkN64VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657034812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tQq11vKMyUUsLm1WV81o+T0wIsskpDK7htcnKmhYbM=;
	b=bv9lh88htOWUhfDNRRE6Ck/lvgtf8pUHSMwxWbBnjq7CRHbm1dciTf0g6Mf9KTeA
	ZmGa8TK9kpnLh/isykgSUCBIFsxMbOpcpgAVCSkKewQbQ6nXWBfhB1OMomraHh2soG0
	K5fKf0F/AJOBzZYxGBPB5SPs2UZuvQEFdfWDd8kM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cef8ab5f-7522537e-6051-4478-8e22-34c876245347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f6dfd9e9f41c15165bf910ba71261718b92fd978a84ba61213500d91db9a7db
Date: Tue, 5 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657034812
