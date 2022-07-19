Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199207B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658215012;
	h=To:Subject:From:Message-Id:Date;
	bh=bUXvvQjb33ANBVT1CDQXtPztjEINP0Fwyun4vsVU7m0=;
	b=Tu8OI4HcTI5CUhdJUOWTv5GeO7AYulGSpvnvd4qQ8rcyDSM0T92cgydg9Md3qIR6
	ehc8L9Vwhdztj98z2pOTPfYqnbQ0U6Cxzl9RYy6N9iYD421cB6TsF0NDX3X8vyChOEv
	kOYLvgByMjU4omu379VPG69sYqchTdzFqctpJD28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658215012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bUXvvQjb33ANBVT1CDQXtPztjEINP0Fwyun4vsVU7m0=;
	b=gmBxFTZAyNXHB7oh0hsIgl+UDbj0HOE+q0GL/Knun3/wgqzKSeigthjoXy/r4Eob
	lKOvjcVeDOQbY4Qp6p9TWbqLxVNkg3/OvIphKr1/5F0ZEP19EF86OrBIkPRjRPj9Rdg
	DC2poFbCIPLLHuTaitMMnrYBVNFzwuUHDUiR+ZRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215511797-b51db679-83da-40b5-8fe6-46931d1240bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b00ab23eed64d369efeb630b91570d3041ceda2342151bff373a60cef5e9e96
Date: Tue, 19 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658215012
