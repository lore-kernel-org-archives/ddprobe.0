Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856F115A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658469413;
	h=To:Subject:From:Message-Id:Date;
	bh=H89fHxMQGhrTn4JjMbmq7L3xrQz1kkUb5U86+CJwtyY=;
	b=eRCZjfNqquivD7PeX1MZ8OfgKkPVOOoJFfHsL9CYmlHZB0DGVi2ocS1oRzuc79FX
	JEhqwYdqvKj0N3X729nQo0lx7rkRaxCvxoU5bZlP3VdFL6z6+4a9WpsfRLHT73rPocP
	v0rBh8NyahQbGBH/7BzbMlsPv0oQWOAqhpbAwoD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658469413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H89fHxMQGhrTn4JjMbmq7L3xrQz1kkUb5U86+CJwtyY=;
	b=il053NffRyeX6uW8qD5wfnsIeKlSiRH/sPOOR1DjL0CIXwW1onpC7HVX+mVk4Vqu
	x1+8WePnVA3/mrz6T1L9F3nZ0bpz+RUJFepI3VwkpYCYbXvh5ndQc6XxDJCIih3JfE/
	LRD5PUWE8i6WbKveo11PklOxiFjyp93t+38eTzbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182247aedfe-06184cde-620f-4f6a-908f-9c6a111199ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a776ffde7c25d9b94d41b6784555d090760a826c186cb09f4730f5fd9c7ccc84
Date: Fri, 22 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658469412
