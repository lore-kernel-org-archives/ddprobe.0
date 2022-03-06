Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B8510EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646530585;
	h=To:Subject:From:Message-Id:Date;
	bh=uKZY4XNMuWUkpZyKh+syFYvF+btsGARBkjsZrikuai0=;
	b=U3KtcRh/eyLv+EckZe1CzyyWfwFxtoaV1w3R5KuTkMy5WHCoz52boCudM3p84sXZ
	UGxGzEVO6svZ5WfC4eHdUlZv3Ub+0Bu0FZ64TiEWvUBANvzoaz+qLyuytBt9hNWiRSC
	md+34iios83vTm0XRItvioaBcsbJSKYmgMdXc/YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646530585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKZY4XNMuWUkpZyKh+syFYvF+btsGARBkjsZrikuai0=;
	b=G71DUMKx4dc2Y8TBFiE4rFv7Qp1q8lb2PyfsYatOMU6kDiP3bufip6qDRn5nMxVz
	alyIeabJ178eEBNYaTIzh4w7fsxLHyFUue0D5CJjacp1+ugEBaArE3E0fX+ZULMznlj
	adComs0TW2ZdmIjcw/xtwXE2SsduSC7UuZvh8rIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5cdee0d2-61bc03b8-a499-423f-b36a-194739c7a774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55d326a09394e1ffca03699b984ce8557e4142e73d1f51b2f0b050eb79329d10
Date: Sun, 6 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646530584
