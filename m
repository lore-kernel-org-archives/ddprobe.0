Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37FE7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647936085;
	h=To:Subject:From:Message-Id:Date;
	bh=MddelmoTs0pGytez7nS39GYVjhDkR8c02eAuAKGj1k8=;
	b=HkqHaLYAPxaEcUAYwjrL3j7TV5w37aRIC40U2/PSSSwD4S3G3xpUroEa6WxVv9Re
	W2FqqPmZuLNsaWmlSNBpu35oodYCOIvLPNAyX/54lj6yW+FslxW43UKWtzK4jlCBgdh
	qw51Gu/kmQvZ/nW93vOIBlnp0OlYZy/1Vc9UcGRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647936085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MddelmoTs0pGytez7nS39GYVjhDkR8c02eAuAKGj1k8=;
	b=Zy5/af647HPXmMX62/Pm6rfLgX9rMzYVrVLrY7av6pFea+eDVTnOoP424Yuq8CMl
	NvFOXoYEWjP+QhVoZ/RnOUJMUB9aq6YqDMB1qe8MjiBZQDSsN5yOcHe8deUeKpwel+z
	buMVVJPGt8L61p4O7rkr8im/zeb3rt3ULyPsB6xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0a51b25-1b28441d-18c1-43b4-b9a5-8923a8280e90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8312bccb43a3f102c45c715ef340527203b5235fdcebc7eefd41b77f5c1d3aa0
Date: Tue, 22 Mar 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647936084
