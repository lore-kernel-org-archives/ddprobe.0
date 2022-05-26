Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A8129AA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 23:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653607379;
	h=To:Subject:From:Message-Id:Date;
	bh=DryduXAHFKNPGaCUJxGR9pbpclIyy2hzakjpj9Z16Bs=;
	b=LK/xNdLLiR3jiwEqycaDgGYZCWL31Vg6mN1WI7nfK+yYr1xjUObXDaY1deCJUgn3
	Mo6FTXBQgF0+BouK0FNnSakbeywJMrS+wRQ3sNPptrv5dh6eannhjN03IVfUT/lnXSX
	fj6k+3HasBA92UB3Mizi4jm222ZikZlQwNP+MemY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653607379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DryduXAHFKNPGaCUJxGR9pbpclIyy2hzakjpj9Z16Bs=;
	b=GkFXCNYmwOpLlz8J+81LIhDJTnWGyRX7raHOzMlH/T9guDDCjGyyqfIW6HCLxCM1
	/6DhAkivXQnofbFp9+GzigzIOIP03DwhKI3knI1EKdtsF5mVx1MuN0kjojdU8qq/H2r
	SuW6c49RgcuUbixDxwKelLIfmkYN5HkJ5LULmu84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102ae3151-2c5daa2e-f2f4-4107-a6f3-e00767a8b212-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cbc4eb98fc656d3ada59971149d5ac2d151d8e1e3724b2e75b40dae8a1334b4
Date: Thu, 26 May 2022 23:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653607379
