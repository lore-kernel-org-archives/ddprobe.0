Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21357A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659042053;
	h=To:Subject:From:Message-Id:Date;
	bh=pvqUWCJ8ehr91wvmTtiaDp1pFLJgMutguq7QAne/DSo=;
	b=TROgpKMsB+K4D7VCtRRDOZspuniBhIeihDvme7Fc+GYcv9GRT85j7DflQuVpc3sV
	rOP7CHqKTYwW+czQxBe3yBpOAosjtBNtV0f+XTSaTUiGvxz/Wsv1SPUOCM30gX6WrbL
	9kZa4iL4A1X1h4KuLsd5gFS2rhqaog1G6K6hRmeo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659042053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pvqUWCJ8ehr91wvmTtiaDp1pFLJgMutguq7QAne/DSo=;
	b=YUaLG4gVg/tOU5lylLCqpBjQru7O30xgGRBZzJ2cfPO0LUx+iT2QCjFJfIKHQ6dN
	HPOFv//gXhTzK3qQjuK75XbwiMkNGX7NdMICZE2+JSsMuHJCQWlffoOkAkUWpu7lxxO
	/Tpl/P9qrg9hj22cHtPREFYvUkzEKzxdnzw5ZaMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182469cb9b7-b19774c6-5826-45ca-ad6f-b4d1fc1b4faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18364bff7a5315a6ab5d72373de2ec99a2f072ddcabacaec0ad0b12f98aa627c
Date: Thu, 28 Jul 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659042052
