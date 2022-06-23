Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3064823A8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656016612;
	h=To:Subject:From:Message-Id:Date;
	bh=2GzdjHOXnTxTBFdEYCethRYKXy0zFWnEuyCSOgdLiHw=;
	b=Z7UerjAPTh+VUMYgIpioIvBAX6JW7uVgmc/2VdQ4GOZU3qoRUjZiLX6dRKQcRQ8H
	TkfTJ25TObZbJESL4rbgaYNlFqCrr7G5AhlXnuJRzEvOXSAdpreEq13MghiLR+x5OYl
	xypBk0+ji0cxJ47ZmrkyyuvvUI8vflw/0WA3llUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656016612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2GzdjHOXnTxTBFdEYCethRYKXy0zFWnEuyCSOgdLiHw=;
	b=PHlrVWtMjEtH4avcNnF+Nhg/P+c9tIPR0dNGHCp3ORb6uRIbB/vbljS+EVP/S8XR
	HNsoIZCxTL+VLBmuciZYiVT/Gr4BPx2h2XmrzUI8zqBouwu3OHBG7hYvVy7yIX/dHOZ
	OgKvgd27NNg62iLq7ICY3gcjUms8Atyg6rFtZOlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192482bb1-9114a7d0-b171-4266-a576-7170bcebe9e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00bfea8e5db4f96e810dd4d399874038c936e3c9b48ccb567c15f2062907bede
Date: Thu, 23 Jun 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656016612
