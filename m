Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178F67E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 05:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654408439;
	h=To:Subject:From:Message-Id:Date;
	bh=pOb+T2dmJSnjLijotA3VMJT5RA9eIBl7n2v2K+40KEE=;
	b=i3MTOZF/+RxAr4JNLHBll/cvf4cQ5psMsVe0Q01FVrRpLmSej+QyOaST/XStM+9c
	7eXRkFWxrxo322D9BNIn3vXFHNWkfpSh4wmWoqJ04S1v4xu9B99pVt2ijZt+gxuakTm
	ujLoKS5xQ7NLVSeQosH/Kd34bsj8eTNbkfJORkWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654408439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pOb+T2dmJSnjLijotA3VMJT5RA9eIBl7n2v2K+40KEE=;
	b=fLskr9cSaRlGHJPFEoiLYC1ogkTbo0mdHY1S1OUb3mFQlhXmLAZzC7fq3u9qxI5+
	8T6ThZ2ysUL8H48hjfCeVGVsKyeViIRbMxhoTkGIM5cOfWAN/dW8OH0yJB7pVdAsQuR
	Y7eIe5tqjVP7WSyQWPFuV6keJ6XBLhfrV3NPfw7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181326d6625-efeedea2-ba17-4a8c-9ae5-f5659c2614e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc9010d20157727cf98b5c5960dcfc4bf5fd67011a733fd9a71d5d6829944ba6
Date: Sun, 5 Jun 2022 05:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654408439
