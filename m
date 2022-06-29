Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6EB629
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656485812;
	h=To:Subject:From:Message-Id:Date;
	bh=6FOigj4eoeLkch2tbXbptYTmq9UU5Ro1XzlA4u/qpTM=;
	b=ixhnJm6w2zWYA8V3zhDiGyM+0m1GRVMb4jmP2g9r/C7QrFFwRHgrJ60HsPkeL0X7
	RK+AMeRkk6jYpDXdUSPvyQg3FOy3HT5B/m/E91M+2MnM0ZIEnl8IPsQV3a3xgBo1ok0
	rl6FrEjXyP9KL691ITRNOfZ9SR7+ZxrfPEbCS4SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656485812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6FOigj4eoeLkch2tbXbptYTmq9UU5Ro1XzlA4u/qpTM=;
	b=RpL2bcfCsb4KaOh7eeYBSJbLU8ccH+dLURlMU51TIRs8ci/e2VCp/Ptz6RqQYRh/
	pLjSfs3GjrRguQXvCC9wLrkw0IpyLja+AkmlgZhQmxVhAIJCEz9kmLKgORCRtnfZ76g
	45kz3TxhStEUVzJjLBVrZe9FnT+mVEbcHGQAHUo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae3f9862-97ae68d0-366f-48d7-8a8b-87bfa7cd0e94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bdcdf0b1f2d7fb27e86dc3439cd03c5cef383252ca0b5f36d7cc90b8895ccbf
Date: Wed, 29 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656485812
