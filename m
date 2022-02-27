Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DBE2F25
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645980084;
	h=To:Subject:From:Message-Id:Date;
	bh=uJQ0RjAQG69NZZeRPlaEvBti2fHJnt9o12baXsy3gYI=;
	b=RfohGgXBTemDfarZRP54Tb4jQuRYKeM/ZdYqNfSpzu6YdSbd/39QxN4wpMEpUGiU
	va14++a/J7+TuIp7CdxoNvAR/uase1eNNG5yUMZhqVcPKr9YHHgaK09zFoFLBi+IIvJ
	jZttstHDJWEfOZh7XW3opGTNspqoHqN7CSnwnlOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645980084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uJQ0RjAQG69NZZeRPlaEvBti2fHJnt9o12baXsy3gYI=;
	b=RmOYQBHDiw/fZqSn8mUigEXr1djGTVpwPi/Ste9FGNEpBTp+zSCZ68YoPDD5aJ76
	syhDBWAMwHpNRk/LMKZlDWRaTjGnaWf1Q2EsXLiFOhFkX2jp6SF2V6oP75ohG6cm2o4
	tTHvW6yf0J7PyBdtBmkk7G9k7jtYpTyesXdN9WBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c0eea0f-3687aa53-bfc6-45fd-aa7e-2b78b508cba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a186e124dc6a66a48696176c22163b30792108308295b134de74f1533eff998
Date: Sun, 27 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645980084
