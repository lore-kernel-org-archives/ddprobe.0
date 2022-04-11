Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17151363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 08:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649666998;
	h=To:Subject:From:Message-Id:Date;
	bh=4MDmAKg7xZu8bY5CLqWx6N61TTKEpj907vsGzgJbpUY=;
	b=TvGVkhdJx3F8sjX6P6GJwu5uKy7hHjfhC7G3M46/PQIYdq/z8IervkzYI1eo+122
	tJRe6Jrfe+CIaKClPmWHEM5OZx6QtSmNhwViAfslqlbb9IXo16GPtZbX33RRoP4OFtz
	Z58pRQ1qhmJyxQTWsyQfsjBcn7by0C5/m6x5E8lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649666998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4MDmAKg7xZu8bY5CLqWx6N61TTKEpj907vsGzgJbpUY=;
	b=PoFc1rHgREtMo37wTVb5nYJfkyvy8BVLuvl5jQMM1FxhpK4/FXSouBNXrQ5iBn5W
	F5jeyZ/2+f/4ZqPoiJbpP90Gkmo3ejTR1/3X+HDvOTEfU8B3Kh5AZagY9bFZwwQ427d
	ZMlDTTHVJTsb48H0/4ljfkurcM6C+hVIyvBEsmjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017d0bff6-a6016f0e-8274-4078-a452-69ea364cda24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de070ff14246484a2891a3fe95baa9bc514ba45f59be7ca36eba63c8cb4f486e
Date: Mon, 11 Apr 2022 08:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649666998
