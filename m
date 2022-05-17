Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B9810E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652779859;
	h=To:Subject:From:Message-Id:Date;
	bh=2xLWd7NNS/5C534TkYnEimDq6pgIoCTWuQ4FioT8M5c=;
	b=eJ2Or3TYdnc+p1hzLN85xNF593EbOOiFfr8484Uar/hzuXoKmBVzyjpLC9Gr2w+O
	qTDb7WYFBTIPV4cSs44UHOwsg4K2MsJruiU0zhf+L1JR+iCaeNV5ZtyBk3Bhx4/ARYX
	S96+J1b0K6kCJgKswVZcq20w7mVS1NFQOtYm1xow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652779859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xLWd7NNS/5C534TkYnEimDq6pgIoCTWuQ4FioT8M5c=;
	b=Hjf5xyCMYIDOUch72vP/FXitingyxpowe+5VbBwSOJVjnhAAi5TfjVX6LeSUReu0
	Y1dhNBkaTQx927sIExGsRcWz6srg6i+lwMfwYgAnXWwu6j9LfNl1OxR5CGulHd6+as3
	m6emokYDeKBUVL8X/YfNuX51NOy5OLf2Qx2NHS5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d15b3d47-26538c8d-0ad2-4854-b0ae-efef8e012f12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ff45ecda228c24c1d888d2884c6b7f963308e7dfa042486bddd52132f67288b
Date: Tue, 17 May 2022 09:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652779859
