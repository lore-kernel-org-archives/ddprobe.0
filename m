Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703147A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659026452;
	h=To:Subject:From:Message-Id:Date;
	bh=0gmCfe3csmlXoAHkGuK/WvPfkfhbWr4WHwAE5eCMlmg=;
	b=JehnuVloiczy/05Nv1DI2nT+/B64O4qh06odjNhaMZ2FPH17+WvSgR28F46m6lDU
	bXcJY2e9qzJJgSs+8RTL19bBD5CqqJEnrAxL7Vlxf3TsYviryJ5GQEsC2tuuMkSLy38
	+GNl2TxOPU8Msh/kjqOQGbRvCNda3Sii0K8B5Ldg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659026452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gmCfe3csmlXoAHkGuK/WvPfkfhbWr4WHwAE5eCMlmg=;
	b=gNKPba79po2Kei6g4RuxIt6dda09Cw0jVHqUf32mlflw0ch3+11PfLXxabBxkY0x
	r/tIWgD/OIo68SFqnxveD1Xu1Dr+M2sW7aC2ZCNmoANe/aVc4etNN3ilA5iI6TSZbSw
	E5gMj+F2z+Y9L33ey8ur/Bx7JOjQSaBN7B1puSzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245aeb06d-05833e13-ffc1-4779-9235-2079a71cd89e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01e35fa4185ca0c2bf0575af530eee7994520ee11a5610f63eb6b7198148b444
Date: Thu, 28 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659026452
