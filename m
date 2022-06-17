Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5837F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 05:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655443199;
	h=To:Subject:From:Message-Id:Date;
	bh=VqSMUKRfjpt9gRD4jSmgILjPyKQYfKaVUvmVTjFXjDU=;
	b=GiiOhoDURtprkBN+bSj/2nmi4z5pyR61084IVkXtRGO3fxAcXi1CwDvBdjyulTW5
	zKjsHoGq2tL43TW1UtPPDJu1WkzPI8/DUHwxNxxU4bCc6aw8TeNmSuK0coCqLxzCL+C
	R6HE4mjKFMP52WUNcbk+Cv5UBQG2XEe1NtCVJtlI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655443199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VqSMUKRfjpt9gRD4jSmgILjPyKQYfKaVUvmVTjFXjDU=;
	b=YY/GkEw4GFa6WP/fe+TX6EASuCpcSnthIwiqCLOF3UbKcKUq7IkU8R3lfxRMw6xW
	aA2w5EDWiZisLHKcoUyDPxyv/tbN5G4XhjUCLVlG7QK0HFDXjRnv13+zZDqV72830hU
	7c0TKnTBEOpxHphS2u9a4cEOCI0vAnBzjD7CJFrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181701a9519-54f3697e-088c-4e2e-9217-b2e6e789e254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 761021699b26702d063f9d1361d9b777df157db2c0bb13e797fd9b40d821ab6e
Date: Fri, 17 Jun 2022 05:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655443199
