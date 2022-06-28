Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DA6362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656399412;
	h=To:Subject:From:Message-Id:Date;
	bh=skcyf8Qy8XbC9L06vI9OHSgYbJMnNvK2g24lRE8L93Q=;
	b=QR87ahx5r52SNTxsjE9XsZmnuifbfWXyYRDHUQjeKMhRRvkAhaaoUrYKHsgkypXN
	Hj9doUa8GOZ1I5tMyD61ZdnTW6pgK3eNRPP72mWXeYvjjVMbyO6gL5IE/babWlVgYox
	H8snsQknewHNXOQgpGisLmFOohneC4QSg9KuaVn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656399412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=skcyf8Qy8XbC9L06vI9OHSgYbJMnNvK2g24lRE8L93Q=;
	b=bhQ0Cnqo9imI4DQkx2ne2NCqzAUh3S4t74yI6v9GKYdGyNmbWqHaaReEmUfMsj/I
	kJKEYXvvLaQTn5YruAmUC2RaQlpQcZT6RBm0zgB4Hj/Oyc/ZRpp2hv8Vp5Pqj7fmcE3
	/jnUFpXqEY1+lIEwVzKJyFU0BjyZ1o7BUQwBej7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9193c30-0fb48b7b-aaf1-4a7f-8739-a4f33ecb6e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ddce39acab5b4c788178951c27affcf7c0b54663ec49faed99042975b6d9ab0
Date: Tue, 28 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656399412
