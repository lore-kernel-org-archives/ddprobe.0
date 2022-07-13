Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583F4A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657739812;
	h=To:Subject:From:Message-Id:Date;
	bh=pJFFhNEUOaAJVSSAWe+23Meix9rTXZCPrR4skxrox4U=;
	b=ietWXC8gmwWlOKkRN7vx3utWd1AN0ogtzSgZfx0M5HHmNnLnJcJwa1dW8j4x3CKS
	OqQ7clAlOkzpT76MUmAN6xjg3nyCJBOYXsUtChuGPmhsKHu4Wjhwd9gB73k+lvkMKNz
	6FWY2rrmmbQJFyybTLHrK6G165SbV9lPkHqU7ntc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657739812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pJFFhNEUOaAJVSSAWe+23Meix9rTXZCPrR4skxrox4U=;
	b=eMHgziNBP/VzWfur/OtEUZUFNlGUKlB/QMoTszzO6Y7hou34Xx7HD9xcfvr8QtH9
	GJgCniVok0O7FJpPmmBFpmfUiwU3rb3fOk3SEGBlzKvXxXvxwnckesFWGDf5X6NbG8H
	AZHzVsIPBz1l92c4fhsHF422gsmQop50tHsfmmso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8fe1de2-850feb1a-562e-4f85-a927-392f9432b10b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dd32bb83dbb0b838d238a0482c7a74178f36bdfa4a75771461a382184562f61
Date: Wed, 13 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657739812
