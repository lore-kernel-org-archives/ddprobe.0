Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DFE7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658561812;
	h=To:Subject:From:Message-Id:Date;
	bh=daacYMtEKfXuLd5G+ELKBAzFWM2mfUok3DtuW/1cJVY=;
	b=BizuP7cqzoTmy292Gotvvvt9LkrXTKNdna2GnR2ocBoyW6okqqfGllGy5BPYpJmv
	dOEifdEDcwWWqEwW6mxMEobFZbwe5WCNVPZDXZGnULQ85k8sttgh93dEjYHt6ooJNZm
	cJ5tkhG4+F6iTGWa8CyHuWOjN6LrtTRRfBSWvxY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658561812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=daacYMtEKfXuLd5G+ELKBAzFWM2mfUok3DtuW/1cJVY=;
	b=OxcjzzcCl5LWMqmaNM5guvIpxXsgGNx5te3tpxZhVxIfPQ1YiKsXhPA0ukpps1mk
	/WXMkmeXJ+FOvjE449CpeEikIbimJpYuCBgtPljOU9CcaZWPTotwKHZThdKdRaXFBpK
	GlnrGY1Xz+oeyEiIHa90Ha7J0KdUz3XNhLHSllUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229fcd75e-1ec44bae-2d3f-4ef6-8b18-4771e76c842b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 267595f21c4d2b84a3d8f927d880b857e768af8ef6d4918fbb55a5618f37b9ae
Date: Sat, 23 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658561812
