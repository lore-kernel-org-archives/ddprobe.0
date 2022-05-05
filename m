Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064B8363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 08:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651738378;
	h=To:Subject:From:Message-Id:Date;
	bh=3zk50d0nnrYAd3nYT5akI5I7nAojDsJPXAPJefURTHw=;
	b=gbNbBNmARlf3zrILqdVqebjXmq4Mj1TVjdRKGci6oc6UOO0EdQiKGlANd1r0av17
	rhXsFqUVJxNpmsRyb640+XOV0UK1Wbzv6siODRRXNjb2uC1NvJ2bngGsvzJvrWY/MR1
	NsUCBo+O5cBhjjoviNKFu8RH+syKY+PkAEeSpC58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651738378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zk50d0nnrYAd3nYT5akI5I7nAojDsJPXAPJefURTHw=;
	b=iANzngGJQy28hF5oO87y1PuD+720qiPTOE5mgEgHXy47nsucH/x0Fv+8N/qDeo6N
	JpcCMndPMMnv4RcVJZaHKj+o6n8xjerdGtx1nt4eksXPlkZD/qbyDDKxO73/bOaV58o
	72ZNF4V1up6haWM2WTUM8gIDV1yaeaSY8R0un/iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093477ff5-bb3485ab-c21f-4d07-8d11-1e784549f0cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaeaea54d9a4a38d270ca8adabf4d8d2a8758d3410879e52ec279f2b7861ca29
Date: Thu, 5 May 2022 08:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651738378
