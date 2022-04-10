Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CC9EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 13:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649596738;
	h=To:Subject:From:Message-Id:Date;
	bh=gS+S50aMbj52Y4Wf7fHVcpWoE8IN4kA624NycwIzYbM=;
	b=kQSNIS1JaiRuK1486s66QwTz4m7ovpSlwOH/3wdJn2OmzrkRRQVX20yYFecYF6C8
	A460tlNaKR+3dvdy//UEQDNwBzkrJ1XtWfZkh/kKfXy6sdvNo8SWsGTVEVdxLYGK0VC
	m9KVVsYsjfZZEIRl6tFM5NCIat6woTX347er/GeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649596738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gS+S50aMbj52Y4Wf7fHVcpWoE8IN4kA624NycwIzYbM=;
	b=fw3nKXZe1U6cAQbPeAxRu7PbkWPUGtJClzx9IaqoBlxkz2VVeMtClqQvxFpJgUUr
	zcA5AYPp5DkgJ5t79pW99vc4qL3kHX276PSo7cD2pqR2i/SOhtC4a/rY9RYdvPcVCz2
	o89nQeUCyWfJrSL7EhYGAQxTjIfq+4Zs9QZW5b4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013a0aae6-ca09273e-37dd-4d42-8c43-f8d373b57d47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1f8b46a9c20e167c65b83b293fa597ded5ad9c1f2cd57a2db3fddbb761dec24
Date: Sun, 10 Apr 2022 13:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649596738
