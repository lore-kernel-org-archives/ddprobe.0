Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C223D6B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647473184;
	h=To:Subject:From:Message-Id:Date;
	bh=uye5cxxU1gm2ZJZBhIrmgzt+byjAjGq+ur2I0GqmPaM=;
	b=NVGb54daz9AfDTXTeLh6fXTpXbTQs61ZMJmc2hVxTLc1Lme3gXTfF8O+YJ2/1ncO
	3Iocn/4iiv11VVJuUs9PwEdqP+TL+BI9I3v9uob2UGsYImrEmLhYFjtCPiG/Ma/My+U
	VJaU/GACb3DHj2Qlbu/47OeulAhlE5DsJO/L+P9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647473184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uye5cxxU1gm2ZJZBhIrmgzt+byjAjGq+ur2I0GqmPaM=;
	b=D12Wfp4GZdR08lynItAGuMgdS39hUFl0jGkAZDH4ksCFCpqdKCUkEZGANXDfCdDx
	LOzGENv3rikV14ncgghIK0H2QvQZENnv8NR3elKjmzmOYxXN72glliQjhTGtvPC+U8F
	sqHdxt80xOoxk+hAFCfDkIFaxh/sLYG3z5mCcP8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f950dd029-b8f11fe5-33f0-4036-a23c-23fb8941e7f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39361673252d751c832907f92086fcff6de24019f10b30cc1f144b2442f4345
Date: Wed, 16 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647473184
