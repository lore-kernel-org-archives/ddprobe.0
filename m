Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33DF320F
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645184184;
	h=To:Subject:From:Message-Id:Date;
	bh=tJw9Y8dNDWzlves1ujefzDTl+8Wg500ECb7MdvNyGds=;
	b=BtVIpu+zjs2R8QfxfQ3q0kfdmW7tToJgVgpQEBcOO5iONiCQ6ENFqinXDtilbG9K
	zBTjnV8hflNgPB8QyZoV06bHG7saWJLRD7+KqcCLd5YtgfDJY0sGbm32NzWI4lXpz4j
	E1q9JPNV8aTxtxKlQS0hKV1TVNT90nJATa9KCYR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645184184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tJw9Y8dNDWzlves1ujefzDTl+8Wg500ECb7MdvNyGds=;
	b=BuOm73kK2Qqjwq6mcHUAiCMkLra8LzmaZH+70p5b6WpHRiJGsTXR582zvOUYosRh
	l4bA8KrT8oHjb3bl3CnwB3c6kzPu8eWakS62znW6qmHq8fCqxCFuvJKA5xl+OCc9cgb
	GEcJNxPtpDuW6THqJ62orTmNJ16B+BYKSpMzFXyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c9e71b7-0f2c786b-b4f9-4550-b5fc-51f41b5f95fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d34ecc5af29fd54d808a0c757ecc3236616d9b8b243396e824011074cd412c06
Date: Fri, 18 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645184184
