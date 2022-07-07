Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113137C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657207612;
	h=To:Subject:From:Message-Id:Date;
	bh=dNVZq/h9bIHR6asLIPsXj/bhSbkZn+AIZvvG94LXmYs=;
	b=dnyqo2SHqUJVV4Djw/oEBBKSTvAczwT4VgVQndytPT7LnvMkr2Y2v3o+jqgqJlkT
	I+kd2BjkeweTUezXh69p8cxki57TxBIyTQPyGfv9kc7lxdqBcobX2/yVBAOenBiytfV
	EYPd5dBtXerDyAAm5KcE0bSmZ+wj6b+R7nk2uIGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657207612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dNVZq/h9bIHR6asLIPsXj/bhSbkZn+AIZvvG94LXmYs=;
	b=eBVRoYisd6TRRRYYt+DEEOcKQ6r+CLQwll7OKVBngo6X4lTAJe9cnw1H89CH8wpH
	tnDcHd74axYCg8FXq7FcXDzkZT4IBUjRqUtIO/7xkT7zH/8uaWU6B5e+MB7hNUNQ8/O
	2aUyeBkwbiWu7rxCXAuCPQDFnXbkID7vkhO7aKkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9456387-8822a8e8-df74-42e5-ac4b-236554950728-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd06174673c2503e9263f546e64d824ace854c26cdf5b14fde509712c9efb887
Date: Thu, 7 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657207612
