Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466A7A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867125;
	h=To:Subject:From:Message-Id:Date;
	bh=cl8n1OISc7m2C9ReEFNhH0Aho6zf1FOhv4syfHE4FKY=;
	b=VexI3/hN8LgD+HmIRlzGDu/gcM9M/3c/6wsQ/LHOaatU0UDvGUkxdRxhdSfokwAW
	AwhWcqKalQJmxyQV6/DlloXOYkNj+ScfiUZDphfKE5Kz75Bgjnan7WFbUSVTL/SQiZh
	7tN6PurSvAwkXNGVkrSEpgDFg5xu7YOQKSNMwKs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867125;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cl8n1OISc7m2C9ReEFNhH0Aho6zf1FOhv4syfHE4FKY=;
	b=NNv7ofaoQp82beW3Z0CfNuPoY7moVthQZ56KCGPCehnoOKVA8JcmY1guhRTth3tw
	un06rnjRd80TR4nYEYiG1vZ5lyx6GmZfPneEJuVKmazAkeTxSs36CONnUKG2erGEV+T
	+ocABfFh84hOksfeDTXas44PSZ+fcaIgq7Zfu1rQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b87e6f-bba4f3b7-76b1-451b-84b0-4b9d43d4a67c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bb0f7310bfb5f0910537e349d04e6c3fe85364a11c9d3f6964f70df627e28c6
Date: Mon, 14 Feb 2022 19:32:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867124
