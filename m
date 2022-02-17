Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD3A460B
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645129585;
	h=To:Subject:From:Message-Id:Date;
	bh=u12RM2mrZi/ky1mQnuo8sRKDUwodrW2hVdiwoNd7oN4=;
	b=OOzzlZxvvAiuvFI+PCfDqcVCLroB4nfTDGe7+ggtPSyvoB+IGMzPw6Dn7vl/uMLD
	O9cnPEmUmRfk/tkUam2q9WWkBkaU9VgiWj64S0RxV1RSG4WxClP+UiQOweImnJIl32X
	PuPFs65CNe4rs4vFPD9y7eQNBW9YC8IXYAVmv3PY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645129585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u12RM2mrZi/ky1mQnuo8sRKDUwodrW2hVdiwoNd7oN4=;
	b=CzUBzzz/v+7qyvxMgr1/6azX5O8GaUWytzwuNT3jgPIqwgAsXCgcK0wNzo+CTlKX
	YiobzketA2S1wh+XSuMU+0b1Jhwst0P07oK6wTdfmAmggNyMim1mihoQ8F+7S0wyObn
	RPQSCPO4NXVHrpWp7YUW0DcGqIZRXmuvYzZnjBxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f095d5066-576f03bc-4249-49cf-bf99-d28eaf31bc00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eccd3df221aad991ee9d608ab1371eafcf2f6a7fd3cf4a9d799eb926d00db13c
Date: Thu, 17 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645129584
