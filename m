Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88EE97C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646421684;
	h=To:Subject:From:Message-Id:Date;
	bh=LdQefKwupQjbIimH7rrZ7PP65SYAcNoREwNZtPGgEwg=;
	b=Y+vPxF0DMr/ysjA4iPF9MwC/dqMNWg/+lxmWvXf3mipF2DHYbuCQ3r7chRntM3oX
	djucqJ+t+r9FFN7/stX61MWy4WZtigmxW6YGjJ50TfRC0StzJD6Jwd1lIONhpNAmts7
	t5MxR5TJeocLWoF2N7iW/dxquXaLeTvXv2JxWyys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646421684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdQefKwupQjbIimH7rrZ7PP65SYAcNoREwNZtPGgEwg=;
	b=OR1OlHvjnGd6EVP2IyqlMthW1mx0BzgleVir8M0khU7phjYqooL65R5jXJ+u9Uob
	tjfhdH3ntwlFVY0/VOtJmUs/20UR4QpJF1NdAkh3hRFH3ZGWDWlltvel8d5yKq6vFTu
	iCCR7rSPs4xEaFHPfhL7EnijmaW+Q7K8M0bU0lSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5661322f-5b7d889e-a0ba-4e00-9cc3-2564546accdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5494af06daf1e0acd65c28c700485861faaa9e7d8cc080835191616c55533be5
Date: Fri, 4 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646421684
