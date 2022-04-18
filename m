Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060EA7A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 00:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650241258;
	h=To:Subject:From:Message-Id:Date;
	bh=OpF0vzLuO0tfXTLdI/DqW3JsiA2PZk+F5UcwP8JSMvE=;
	b=lEBufGzuZRSQY2BxU7IsQSjCdJuhBcVNmOp7ntwFrjKrcnqvBzh1cyD+Ugi+DtCD
	+Xsok9zJ2NupqJWX5v4L9jAVx9XaLn1mT15oPvh6NDY9xfZzhRL7v7MeZiIdm6UfhZ7
	zYdQ12pbZi4eropIDLJGhxBvbPLyr5H2t/qQApzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650241258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OpF0vzLuO0tfXTLdI/DqW3JsiA2PZk+F5UcwP8JSMvE=;
	b=TJxEYShTCUr+leuGQpeiP89EcSEgD1GGL4LdRTRs/zy4HrhWEdXLiFSuwis8c21E
	ax3cs8oeNbbjKnh0IebQle+lLSnNvWZvEVpLRMtZ/VcE9VmJBo4WQ7yEwA1uVBrUbUs
	Ql4rWtGkrlThPEKcB3Xh+AcH52w2hGnNPF5rjWZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a0b4328-02e8988b-0db4-4fb0-8411-a7ea3cb267f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fac92a229ee41c82a933f918178f0364632acab4fd3f64f5200802286e8b3bb7
Date: Mon, 18 Apr 2022 00:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650241258
