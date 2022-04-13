Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D60291E
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 19:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649876758;
	h=To:Subject:From:Message-Id:Date;
	bh=K2Ea64G4bVfYL7mXUcebNNAs0Mf2StJros1ONwQ0RmE=;
	b=bMCdcf1LMD1PCzUi1YF+VfsLo33RQf15Cp5tHVuRtSapBH3vFHmS1h/QODoih/n0
	cnJmujsiWo29grPrpEE9DoKWv6445XknIGprML75mFQWBlk3T+RLDo7uMTaLVV02tRQ
	hEjNwtjz+d5o5TtkgoQXVKHMe2bKBfMzxAE9eiaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649876758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2Ea64G4bVfYL7mXUcebNNAs0Mf2StJros1ONwQ0RmE=;
	b=YzWrSmPE/zx7rTcHzKG4t52aDziPO29S2Ko/Pe07oQuKEWwcMp9sP1AeAoib6KtF
	79qjNjlCDsbdBCxzNfE9GWOlM6HVHDTy6lfdLltKr3+RZaLBZOXvyfK8QlnhMpD0ehn
	7cFS0xU7Kgk1FgM0zL80OfU2id56kUS0+D3QfklA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018024516f54-38bf0aae-4d4a-417a-808a-1beec8a996f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4874903f83a4cda3d68face451ae23f93a71de95dd494cb501d872c98965d8f
Date: Wed, 13 Apr 2022 19:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649876758
