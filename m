Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7764728F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660140052;
	h=To:Subject:From:Message-Id:Date;
	bh=p0bt+cL+RlztJc+AAtI2JDcAahTC+EohX062DcUiAyg=;
	b=kuEQeyFY/jTGsVYPOnFv9sQ2xgLElWI5ZvT6Fz9dSf7OTcS6N9ZRgsNB6NO/C8oo
	Tvu4Hom7IbdM/EIeQn3vV9CeftD1N7Lj1x+k62vN4PDnhzxDrUpUiq/DwbFU5Yxd/J6
	Fjjvx0L9KkZ35bnQ6awpejIW2KBunbthqCLnGGn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660140052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0bt+cL+RlztJc+AAtI2JDcAahTC+EohX062DcUiAyg=;
	b=aPMd1k8OEeD2l2wDpR2PU2hFcZHfLKbBBqZvxEsACjV4ayJtu7V9xvmwfQv89EkZ
	x1HwbHqOrCSYArdxWeZtFl2JUu/hWchqcZ8zY+oxGSPB2pWJa+gha6Wk/trQW/JJfy5
	ATJ+h4joKba0NfoCB41VhtIxDuTSUbTthfim78PE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182880ee07b-cea6a603-3e11-4f3c-b368-c3734cc85796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5d5e0c82d44d8d84ba355c95cef744892d4a92c0c02015380000b533c492b83
Date: Wed, 10 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660140052
