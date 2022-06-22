Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBD31C26
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 22:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655937839;
	h=To:Subject:From:Message-Id:Date;
	bh=xX+5ianZVEemQgvlns3DiaNKWomXdA1UL4PQsWiVoAI=;
	b=f6RKD7NfsZs3R2Y2VxOC1/e+TOJW6qQZrDikJZ4Khq4wjDNXmen+E6FDMn60ffxy
	yQqJxNshFQnRoRqk5XC6BM04KvzfmlrQBG9MmdSiV2NUB5M0PTKZ2UmmVUnhzz7tZqq
	Xgckue9MQvDzpWszYeeXmKUSUHNbhrktUsdlQxbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655937839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xX+5ianZVEemQgvlns3DiaNKWomXdA1UL4PQsWiVoAI=;
	b=SiyZEvWYZ3KL+CqnS6mNVFwrYgXkQe1YIEJz3mo3FYSfV4nysLSMlQeh5F3dDEEM
	hxXRakQ48EMRylb+AxGWMsyTfUsE3bTsSBfoVAahnLU+5Y7bU11uX7U6LhgSTFzFksf
	GXWVlagJFBwHnmb7TsU/yW0VyBC+pnb8Z2S0DYz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d9630a9-7bee0fe3-be74-441e-8559-b0d2ce8131e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 359d3937dadbca736d29d41e9eed15978d4382dfa420c7c8cbde9522b85ccbb6
Date: Wed, 22 Jun 2022 22:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655937839
