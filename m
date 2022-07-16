Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B8F36A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657962412;
	h=To:Subject:From:Message-Id:Date;
	bh=rLYWkik8lxR/IA7Ri4TEi8kfPzadcXbiI6aOvhqJ9bc=;
	b=g44l/ujgcDfgaVtdP7v7G6NDi1hP254pwCeHT06NfS5IUJgjgpj1I2VxSpVkpjRS
	2qxHxHrDuuWn+tCnnQvqhIExehJCjn4Cmc8jvWQ6FbPOpuyono7u1cn6gNkbAFVQXYr
	3Le9AEkLnr9u47yeYwT0lZRDf2o7hqtleG6uqCtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657962412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rLYWkik8lxR/IA7Ri4TEi8kfPzadcXbiI6aOvhqJ9bc=;
	b=Rp/TNmB4SXQjlGGlNYgLS3WvrDrPCKo10wOVaWx4C/n9c6msQ7nfgLmzrLD8M3OP
	7qpMy7YyV26wb2p1X8b4PXOEzI3+CyjDInJwpWhAoCFbTTp284dM0stTjob8Gvx5/en
	B82vgAzjOkQ1sjmF509i1QdCgyhFBaTS4p62dpaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820642b930-0b0932f7-2bef-4e20-8def-85da7efd1a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbe478a90678ccb568437ba7da240830a85b4d2358c7c3647d16ce577161e985
Date: Sat, 16 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657962412
