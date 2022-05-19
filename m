Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080FF23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 05:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652936639;
	h=To:Subject:From:Message-Id:Date;
	bh=uKzrx5Hea9rDkj83klpCAFrGq5ovGM28km+gQjRvV6s=;
	b=ddRPQKfFc0v5Apfqr9eugWAQD+wLRgGsFeEdYgJG8AbJj3PBj9+OhQWFfUMjEVBU
	5sLJSUagZTKVkZhi5dzYQsun7OLBWkOqtg6P06cDNE+AOlGBDXb12fPIhLAl/9/1eCe
	Jt/qk44D3kofM7zMIgPJxUJlp+PSwTDNdeEyyjLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652936639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKzrx5Hea9rDkj83klpCAFrGq5ovGM28km+gQjRvV6s=;
	b=ZMSgh70bkbj8nlUC1vxoC5PhJEB46vwr8qcaZXKQVe5SnHfNOnqn+EiKXWI9EE7S
	ZkKTo1tQf1XYraVKzX4InqvPMQB7g//QSkk2zXhgUAueDXYEoBiwzxU0B12+itnPQGF
	sq3Bknj7smnycl6NvqmwLXkktZSbM+IxZNpvLELI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dab3831e-dc098f38-34f6-4130-b2d1-96d0fd59ddb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59a201ce7a7fc38447ea7e099f863b200dbe5a23d2bdfe54bea30a3d146b5956
Date: Thu, 19 May 2022 05:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652936639
