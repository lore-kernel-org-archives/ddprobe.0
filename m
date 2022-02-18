Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C373548A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645198585;
	h=To:Subject:From:Message-Id:Date;
	bh=0M8MR2usHRZk0Ztv6QlAAedOrDY2U7IclOA9D41P+W4=;
	b=HFQ54wHpKGKsnrUw0jaHphxANmFmM+Ldvgl1DtppmqeTtf7xNfVnZMFmPyLYrtVs
	lywj8NMkg4QF5+RGCWs8biWPnNVETseQYm6VWg1RIgJZBIfzFeGS57GzkrPbwPaDoT9
	6LUE+FBUCFMdevXYyf5m+KwWGYeeGmcyTL7qWjeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645198585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0M8MR2usHRZk0Ztv6QlAAedOrDY2U7IclOA9D41P+W4=;
	b=MLV/J56XjcHzU/QjLoL/jJmVJXlRdPp4PenFJLXvkPVCept/8fKxvt0MFbuU9Zx8
	0ucPMSzzoeudYrGA3YPHmFwoAactjLYK6OPYdRuVCfEpaeZPcv40DxQHVmoWGaOEBg6
	oDy/7QOqIPrz01HMJpd9sCQBZZ5TS+VSW8uC6/IM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d7a2c41-c07f13ae-5f68-4a03-9f76-6682c1d9cc91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b96224b8d275c63ec28749922a2137d4230d79854c421930343922402de48682
Date: Fri, 18 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645198584
