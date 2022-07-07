Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C023367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657168012;
	h=To:Subject:From:Message-Id:Date;
	bh=f/IOjmF7MsU3osuNdJzchPWMvsrkRC/Zi6EJAc+aSHM=;
	b=dBDfi08Oc1geQklUUsC8osFpoBXet5wZ/7NmsYcgUpdvO+uZMBUnJGRMeT/LyLdL
	BQfmjOV36F35zJIBkv1hITN5U5jUx4GiqpETZyBRbkebwVcDqEQM8LOFmkZ/R4zKw7f
	f0e4MYVNEBUYUagCfq+dVL7uzDJdyO4uppJhdgRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657168012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/IOjmF7MsU3osuNdJzchPWMvsrkRC/Zi6EJAc+aSHM=;
	b=EBwfrPRbG69yAlCXvuihpJ31kZNELl6M8mqyctUG3keLcf2azrLTngmUCUNP0zkj
	lQKiL7POwonCRsm/Z82Bxeo1qO/RKYMDR674XV3d0Kvu58OhiXSjNeLagBuIr4Ob6XD
	n1X2fcfWuWj0kg4S38UPDnfHnuccRy+o8K2xpio8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6e92412-ff826584-9d48-49ce-a33d-7520f590f823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8e34daae970fb68f8cab88b6005e1c60b98ccf8203a3496a7d9ac4a1d035baf
Date: Thu, 7 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657168012
