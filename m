Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7748B4F51
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645242384;
	h=To:Subject:From:Message-Id:Date;
	bh=KbYvjjNj1oVGNnkYG6Eo+N8JA0DEMFG+sKjbkZmPTOc=;
	b=LFDviWeS+o2j9EqcAD3etymDuUwInhbNmoOFbxBz2fAXrCm6EHrzdZcr6r1fLQ7+
	h01oJvbg/yGQsxwGfrlEhbi2o6VHzz1oMk91WcgrE4XLSqAPFqrcgQEPWytdPAj/+J1
	acf+64sPbW8bSC9hb1TakM56+S99eoR2oL4TFCtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645242384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KbYvjjNj1oVGNnkYG6Eo+N8JA0DEMFG+sKjbkZmPTOc=;
	b=Uf5CIsioI+pef1SRFX7jvil4MMufMhRtITvsEgP7tcqNm/nYRId+8n2YI+xxnBwy
	dmp2AVmpDYjke6+NgPQn2hWMvXAhy+ZnctmLqKLr2Ob7PdG36KZLuCw+T00HHPiho/F
	0K5bszh8ffHwF14rQTNf5paqDTOcCsEJelNQbBA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f101681a0-8a511254-3698-4117-9f55-473bb4ae2d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c2abe9b097672624181888deaa26d691e2e1b61e453df609b1ff39a7c5400f5
Date: Sat, 19 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645242384
