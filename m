Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D2B33F0
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 18:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654023359;
	h=To:Subject:From:Message-Id:Date;
	bh=QUUyJ0fWAsuZm39RcH/hzT5f9USM6Yv2I8r8v3aOfRQ=;
	b=K3S9cCm1EmhyiUhOx0pUFhRVIJQ410BBj775qGYpVWXhVzbVy//iV9evSxyBWVY+
	O8yCSh46DB7vcBUDXL6QpdF8RMbCNFAD6qQL/E0R32n7W+JMJ8+qisKKLosUKz3W8Zq
	xTXNhxFhyPWu6fpz7gt/zCTBuUgE0hG4f1IJ9gSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654023359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QUUyJ0fWAsuZm39RcH/hzT5f9USM6Yv2I8r8v3aOfRQ=;
	b=POPZ/AmXLg03fnqVsFvIUUv92OQ9IyXKnZNs7yPpf9Tw1LDbMWFkf1kE2O1BRKPv
	mW3w47CsH04xyxCOMBTB/nQPAkQz5nvh4mvgiqUBuLj7vcjEo2zatoF1tAmt/ZLzlHX
	jwE8nEskCi/GemHnIM47vMFK4OkEoxfOEEuiO2mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b798b19-efb9c168-a635-4031-acad-1f8c5dcb2fb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90a053d647e8a8ac446ca37a6a42be36d7b9270eb399917994d36a1b061e02b0
Date: Tue, 31 May 2022 18:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654023359
