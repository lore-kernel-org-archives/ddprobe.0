Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE4D2F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657886212;
	h=To:Subject:From:Message-Id:Date;
	bh=5cOqdh4o4V/UZpTTgWbtby+Qda8sXZKBre20MrEHFrU=;
	b=DLkyOsnN4J8hCcm7Q4MZgkMGga9BhLuXPyYTnqmaFV3YHEztRbnn0PoY2ytrTAvS
	dFZIMTLwYATT9KT8h30AU62fjnTV5oSf2aJwKAlntTN4rFKv+jJg6Zu99Gf1DaijkoN
	+CrLfW+NIkZCEGRl/KMXmJ2HnDcNdePxtHL/Fjc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657886212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cOqdh4o4V/UZpTTgWbtby+Qda8sXZKBre20MrEHFrU=;
	b=dKnFKt/x1fAgopwZ4imV3SpnJaUqyn4/XiIVCOs7P9nKMdxXqZ1xpjma5zAjL7lQ
	/KiDtVNMvOYndmyeUgXFtFE+X/VR5eoMOL+tq9YQqFmAASuBus01TExzDgQSbHIH5L+
	kS6rrf8aGh95QqOYXKLDXYUNXbz2UbrDlb6Q8N5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201b8009f-4aa98361-0208-4ce0-99c3-c59f9d4e38d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8876bc175c4469248c762c3667487ec3a0ae7e8576d1609b46ccdfe70c3c673
Date: Fri, 15 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657886212
