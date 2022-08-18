Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D033D6E
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660821652;
	h=To:Subject:From:Message-Id:Date;
	bh=ERbUPuk9ZKwO9dmt2MKImWYCqeM6Dcufjo6f2LviEJg=;
	b=J72ItJ2ajvsLcGk7bxmA8+u6w7onhfeQSoAM6end/SEwwUK4lFcV0EseSFvzmnL1
	ddybDqtcXCW/5sfP7MtNrkfuFsaKgct6mEmD+grqEGVpujmTwgPteXtPj3RYsl3cJq5
	Af5CNRnZKctWTdkNEKIqz4aawNhwdn9ggW13wL44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660821652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ERbUPuk9ZKwO9dmt2MKImWYCqeM6Dcufjo6f2LviEJg=;
	b=hSTQ67qfbSj3M3rcSk3OwWfZZRBR6uudkiexGzJCQs9YQwPHmX8vn2LguWkxANAO
	4n0J1oG4nafaOCFtINtNQ8axG5XGD6n5Rqg/ExF6qngDPhkEjZ9R6qCjPsoSQ5auQqX
	Jt6m3GzLVB8cVtZ+j+Kz4vFetiPDLnhou08of45E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0af4451-0f3aa7c1-a38f-4bfb-9ac6-c752ff63a14f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31004d5d6bcf1bbf859183fe0a549f5ae1d95de10cde08dd8844fc8f3b2cd701
Date: Thu, 18 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660821652
