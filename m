Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604477E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653379919;
	h=To:Subject:From:Message-Id:Date;
	bh=PVgCyOkR1sgm/q2XVJkuWN1F/P4e+6YE32zKdOmv/9I=;
	b=HxjCPGncmxMeAAf1BawCApC8giipfT/b9TxH6RpcMbIhd59/sRPlDEG/zYAlTDtW
	ii6UW5IrGwRnjPxmjnwWJ5vSwOHDqB0GlahfAOwnt9VsLTQpfq2p+b+hBYpkhlDVxiX
	3KhIF7oyrAX5UcoJhGLpORez3Zd6qgfABTt938F8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653379919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PVgCyOkR1sgm/q2XVJkuWN1F/P4e+6YE32zKdOmv/9I=;
	b=hBSOWIr1trjpGckrQQkPoGZhuwbCkzTSDUm/AC4v725TW3BlOuueVZHz0MeTda4/
	arGgsdr1Y7fpspBCb1ApNyM2HT5kXstXYPCueOG52UCzxGU5NPW0N1/nkUfjL9yElCb
	hOUrOPsd7Ye4oBYJ6FFPmtlM1RYVyRmaj2og49D8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f51f6dac-8ba0a3ad-084d-4ff1-b9fb-1895286e93ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 271c41dd24aa2fe00f7ae7dbad875229f0623f16fb9c173860225c351b21c469
Date: Tue, 24 May 2022 08:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653379919
