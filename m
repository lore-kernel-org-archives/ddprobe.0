Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F345395
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646870185;
	h=To:Subject:From:Message-Id:Date;
	bh=OoJBFAQ7OOMNCupEhI+HPXYuAFogRftUy0kO8MySwYE=;
	b=NrSPj5bY2Gu6Ck5/7LZC/4aepmxMTl9ThuQT8uZR30JtfP/T1ORLXkmVcqem+X5U
	UCKehwCbtCw4IfJuCmDNQwVCN3fN3MzfePAq8EWkpL86tOy1uCZCqJrq+Ydy83dzDaF
	K5eTkTr24vbKGAejfklQwVu3/KpdCgzLz9jxdd8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646870185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OoJBFAQ7OOMNCupEhI+HPXYuAFogRftUy0kO8MySwYE=;
	b=Cd97BpnBgFNdDqBqDjnf8pJLvi33eqKMh3vSMOeBP1tPeWpZ1HR2jdR0uqMATIoe
	xn7gavMctxjI5noNYuiOZ6/ipJedoQQKnA4YWxi3OV4b9oYwJqss0WPcf9yOnSHg3DB
	UfF+GULZxPFxlX5wxkDM6OhNou4iMKOD2q2LsJ2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f711cc3e0-8a6bfb40-8cc0-4648-823c-05d6d7b2f62a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0de3d61306ed383479378c5e882c7c34cd0ae8ada649f332dde6c32c7a7e351
Date: Wed, 9 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646870184
