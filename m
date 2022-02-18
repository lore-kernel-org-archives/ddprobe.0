Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D7C48C6
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645182085;
	h=To:Subject:From:Message-Id:Date;
	bh=XenOeNx36EiWxBhFq6SW4bVKLKfDX4FhBmgTK65X2e4=;
	b=dzeUFLK+1yAJRQzG6JbIvgL7IrOwK8sbLwU3t+El0RLKDwLZD5VbzXbpCR4mdg5J
	lssujJtEiPE9PYmtYIuaBnBDGAc1HRK36qcOEl14Qy+lzg6lajWKwlZ3DDjtQRsZlBV
	JMKnsB2lM6/pNm0uSnk/gj+e4peIMBK+Ew7ITjZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645182085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XenOeNx36EiWxBhFq6SW4bVKLKfDX4FhBmgTK65X2e4=;
	b=ANHNXUMvQenljkz/CNH8HaxMNLDwQNe+u/IfmVFY7A4aTS+U3BdtuZ19clMoa/TE
	wUPlpFefpgp81WJk7fJzqd3/vvWnRuLSYLbHBzzO2E6/lZhkkX+RVHtyDy75WSJQKwu
	Xk5Mz8AKh5i7+W5hgayEwwvY0l8eSndZAcY8z0jY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c7e66d7-a46c7f4d-163b-47c4-ba22-acaeddeb5122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cab60affeb38ac937011a740627cfb9955f1752d5a3af5e2cffa121edab0b8d9
Date: Fri, 18 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645182084
