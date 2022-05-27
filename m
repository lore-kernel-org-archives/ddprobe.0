Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD0185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653656279;
	h=To:Subject:From:Message-Id:Date;
	bh=TbT9SLX2JVu+MOrMuhqzVYx3/seJFQ9ZS3ddiaYEQyI=;
	b=JXnA3whivU3I58zo/xk9bc7aPXVSYpxMaTYIEEq0X4vxCvlhFrRGsT6v9rd6o2Th
	N5nzzfNMnBp7MjvOzC4nHIj/SYga0Eolvb9CdRNkwOUTS4QrLy5EbgouEkEnsBIrIBr
	iXcs7GF0vj8M2u384bZwquM7UKZf8P0huSJOZUiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653656279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TbT9SLX2JVu+MOrMuhqzVYx3/seJFQ9ZS3ddiaYEQyI=;
	b=bvepPqzuyCP5v1FVDKPA7A9pC3OrHwakkBC5ZwiS9iYqAf5f+kxFK9vepjscjpEI
	exI7eml33qfrLsrUtL6MBVQDYKPjVo9OrDmwHkY63sQf3aEW7zRojeOiS93Alc1PJMI
	n9Jo2lU+lUaG3MyxaEBvPxhG803kn8sZogQhXG7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105985904-7edb0985-85d6-497c-89dd-59ce57643f3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b56dd3c041aca61d1098a4a701e601b5feeb171e060c00684fdedfba014beb40
Date: Fri, 27 May 2022 12:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653656279
