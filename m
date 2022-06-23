Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB291865
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 08:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655971319;
	h=To:Subject:From:Message-Id:Date;
	bh=m0bJxsZm1T8F/8A/ce9aM3ssxrTxCOMLFXc82LO9eGY=;
	b=Jc+GA7kdFEZSljS/X5P55wzPgxRCWCrJu0WS3lBP3tQ4bdKs9rLjW7lp0ng4Y+MR
	9KnvIQtn6EWK+pcgonInPfvGs6wK5jhy07Q/UxMCIH5euES83SgIL1ZrFoWWWENTHVI
	2V3US5BGJ3nym3WWtibFCQ+LmuAp8N+yF18LxGpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655971319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0bJxsZm1T8F/8A/ce9aM3ssxrTxCOMLFXc82LO9eGY=;
	b=Ie+pXv58TIjKVCLa6Dkc5qWE9If2l+lhxCNTcSY++/1yPpCzttB0u9lOCAno80W2
	7jLbPvh9KvyiOH86Btw1nQoVxpyQyj+8iSQp1JwwSq2PP9MKRE265Q4s6rLmXhzmIvW
	d3SEFw+qyc46I0GdUee7u9gdN/YAK9tAf5ISYIZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f950e1e-acfef3eb-96f5-4eab-a4ad-1c746e7f77ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca8d43848f0675f612d77f3b19385b56d9cd6677895ea019373491d41fca4118
Date: Thu, 23 Jun 2022 08:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655971319
