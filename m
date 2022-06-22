Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5551875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 19:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655927279;
	h=To:Subject:From:Message-Id:Date;
	bh=iSgelinwW4+IBlMjAGcutjmu4E9qV6r7kNI+hI/ymUA=;
	b=i9h2V5Pn+sXsyzdXvqAorUgEi03FgYUiulUoj9RZRb5xkbAZBxydM6zIKtcpBz0k
	QZlRgqhYwB6giDcoY9jO0Ph5x7XtEs9sqFiWVRrCZvjz9AFEHxSXmixfr7zgECPQAUH
	ZjjNQlGrS4AVMmGbvKS0igED3IZ0nSZBw5NW1IZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655927279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iSgelinwW4+IBlMjAGcutjmu4E9qV6r7kNI+hI/ymUA=;
	b=KxzwGzIBVOa+gRTUbDHtU/YtWeEXAjDbGY0IJ+WDY9hs9vTxIeJBN0FhurIn0cob
	NSljdELnvUspgT7DceqEL2ZGjZdoKXel+fI1CT44NkJudj5FYwEMwgyGNcPkkpVVkDq
	cOZWcvLrLlL/SzQsPtZhSHUEUtvS7XtUReXLYhW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cf50e8d-fc32342e-67e7-48f4-a51b-88b327cb9997-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1100a4823e8f9c33c104ac59ce50fd734b905480de3f0b6ced209f8327df5e3
Date: Wed, 22 Jun 2022 19:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655927279
