Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDD41392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653511679;
	h=To:Subject:From:Message-Id:Date;
	bh=SfKYWXyX508UQRqM6YHessYkWw7LsWw20VBU7rBhW9w=;
	b=WbsvlO4MmrSH6HvL135xR/ZxIT+h7K6+E5hhzEAw024LMsVel7llP6nXjvKLOYkR
	JpfYBoqGZ7Z3b0NlPZ9Vis9Eo5MGEktRuoHjPMCkthUDZ9KJaYiJpQwMTpMmfSNA7by
	RGIJTVc4l0hv+lBwuCfikK06rSo2Z+unaWS1cUuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653511679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SfKYWXyX508UQRqM6YHessYkWw7LsWw20VBU7rBhW9w=;
	b=H7H3Ttu/fiqA6aeOBaJjZoOuvJ8z5YVohH1CzEVkR815p+7+KgyXrih27L1NjC8y
	m6i9OApOKcdibwLLZn9EWgN0DAMA2mTe//IQWNMwvFdZzCLgJsgB3oXxZUyQHVZnCc9
	u1KnFDxPnAoQR7Hvv9ykd7Nav7iHG5lmZ2yKZJp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcf9ed17-9eb14b83-641e-4686-b721-9a92e998b11b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4100e64c2d150acea65b89a3b471fc4cb4ff0d2f40046bc576cdb882fdd55b0
Date: Wed, 25 May 2022 20:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653511679
