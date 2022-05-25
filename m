Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DA81368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653503219;
	h=To:Subject:From:Message-Id:Date;
	bh=V5Tr9hSTW0Rgc0F43Gg2drN2FAzRJ6sBgk+2ct7Y6NY=;
	b=hP0f2+CZEmGtP7Dj1Q8mLsLH+bRhOrkG5iGdcOHfZKgyAdnj7VQZNFKzaYy/hmIG
	QpeKygyKC87RxPWyy2ndD5tH+VzNy15dcPd/8AsQkpJCHuwRhr1hh+hjSbzdQ5ODKJs
	FwmJjjMg61PXDPwEereRrxg/dzGpOWgqDGMXzbmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653503219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V5Tr9hSTW0Rgc0F43Gg2drN2FAzRJ6sBgk+2ct7Y6NY=;
	b=e+oZsKpJP+OT0TfmKRbL28NkowDqOjvqkaEoBlkBUtnll6DhkbOhyBESXfht9gTg
	DkizUXgxrEST2Umzp8UFYoXU1BsQS24Ak6Kw1IgZjh2zesDvPLlSi/y1n8y+HPe7Han
	gkiuz2Q61WF6xgyCHiDS9SnZlpjcfa6Fyu7p/KD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc78d643-65488f11-0349-4488-b8c7-3f91ca8c58fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85f09a3b6775afb862be2200f8f98ce99c579153c99f1a86af3ff38e9873b523
Date: Wed, 25 May 2022 18:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653503219
