Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B56362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656376012;
	h=To:Subject:From:Message-Id:Date;
	bh=JJDhfAZZJMnEfmPdeZr+j2JXHrqAzEFFJYLIDE2RmSM=;
	b=IyOuMwU38VkN2Sgn9CLzTs/nrm4sthmbG/GyeIYwLA/evq5uEF1zOvN1dHGNIqRi
	yOEeOVGHVQiLrcMc5+V+B/UNC83pRaTj80lfGjsR2nMMFxe/zvM3vrhAYV8QIwBatk5
	gMzMKcPzwX3kvfQtMfOtNauFIi68LjRXXtPnoyJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656376012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JJDhfAZZJMnEfmPdeZr+j2JXHrqAzEFFJYLIDE2RmSM=;
	b=Fu2XLnxwF6MmFw8edZbSimMwBHdXELk5FLgH1a2DBr886G4VH1CPNJp1fhHHWEWE
	2N4PG4D9uYrKNJposBrMxIJc5SEz9qfLVMc8klfOKKInB1YZx9n1bmeiwQtLjtp6We4
	QvHUNcADqO2vRDHBJQqF3EPr3/yZDyRGo3jQu9/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7b42e20-9c52ecfd-dd7e-4b1b-86e3-e2f31bbd0f28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7713c14f523ff17fc2ed2908db555602a39e8d4e1ce1ee28063a5dd3ea769c9
Date: Tue, 28 Jun 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656376012
