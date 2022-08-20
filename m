Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C75328FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661004052;
	h=To:Subject:From:Message-Id:Date;
	bh=ijWvCzI+kE1qRiqSB0kl6Ahr0/g60Nt7evE3K8l2eow=;
	b=lbCZEzkj2Ip4bxutxbhxQro4HkrlAUVtKnPJHDsGNPVEQD9yq1MmSh5AyACbrKw9
	lZH+z/d+26nCJpJK/vbPKf5oOCRkud7BvrToYeO+Zx8tYlIYIcjT+lyv/fSei7NOXy8
	BPLM23bFkelqOJD7ddQI4DBHFbF87ETLp/SB0Lqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661004052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ijWvCzI+kE1qRiqSB0kl6Ahr0/g60Nt7evE3K8l2eow=;
	b=dNkM3k6IQ3jzcbdrv13CTucTEHaxuD1sGgQxRl8l85Z/iRc1/A9WEUfTRf10ou3D
	CIupGoSjVR9LfXxnyKdUOnUixWn6Ccp3Gcy6dx26ehFdA7tQZ+wOXDKnTGr1SJqOpcb
	X1RdFhXKqGty2PRlIYBUNt1JLtRuRyXrA9mWyJhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb8e7868-b86bcaa5-74f2-4902-800b-b17bcef89eaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 775faa379c2c021e73756369f37a678d18fac0bf32d9fe1c16bd3a02c4a5105b
Date: Sat, 20 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661004052
