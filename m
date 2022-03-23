Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746C466C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648062384;
	h=To:Subject:From:Message-Id:Date;
	bh=639hN8c7VSX6s1FMqeAn3FcCox9wCsFblOUnuPyGN+E=;
	b=DV59cxXX01un7YeLYXeg0hSxggTlD6s6n49YposggqcztSfsBfQp3tBeOlktcyO5
	ET/EjkHlBHNdN36nPp+7Pw7W6BMERUtHCjsetnGaLL5QJOtz9ZGgT6LDjAiES1gbCz8
	z6jKybshOrVubf8cxUu5ITDrfzSCea8gW5tbf7v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648062384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=639hN8c7VSX6s1FMqeAn3FcCox9wCsFblOUnuPyGN+E=;
	b=btswP1gEvxrVbYy1eUtkeaapo/oY2zfugOwbOIxxzQeHNsBGfCMVmBtN9U5OHq1z
	677gHaOd7jyzGuUDqMoRHbKhOuOsteO/pGhxfB54xFDy/6Nv9Qd15lHSyRxlJ3Rv4bt
	OdjrAr7AbVGNydYnRopPtD4lupZaMVozXivCgyak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb82c4a8f-2638ff3a-f9a0-44e9-9733-66b938b69a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e59e0fb29f5d22b2cfb24dcf1d4edfc1e3e4506695a421d6373a7242884faced
Date: Wed, 23 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648062384
