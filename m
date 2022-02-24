Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715731B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645732884;
	h=To:Subject:From:Message-Id:Date;
	bh=JslRB1GU+5XIYBcvFBBn4NJUgJhg+eDoTf+Wi43rEMI=;
	b=AapvUVUQtdEGh8zayUMsKvVtckbKdXRZL4d+s7ZX5hy0QGGMLgx0/xnHZWyIYM6S
	FwAhXrgNO+Cm6V+jxI18kXEY0wgJ33sfZ2Hf5b6KNX/7HeKkQtF2fCtDzP8iy254mNO
	BuoZGOEhNmkYzJWZt3BkaGwc63cCnFgkqMWc6KQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645732884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JslRB1GU+5XIYBcvFBBn4NJUgJhg+eDoTf+Wi43rEMI=;
	b=aSKrxsyxbKc3qmxGk+dZsh0OmqoxHRJdxEuCntCVu50i/5knAJqoYeXEHF4DyyIr
	W3US7AuP79+oaGBHMpQa/2OXdd4R2KPzN1uu6tZ7XCQkbJyZTkDUqoaoNiCWW3eJ0Oo
	VTBqfC8pdghKfTXB7/8LYEZ2JRbTH7AUQOKdxZAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d52f106-24ae4a7b-65b3-49f2-8d17-20a7f005b0fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10ae1c404916dfc3eb1943f0847a508e980984581fc3ac2c251692b531c88f1d
Date: Thu, 24 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645732884
