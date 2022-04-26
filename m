Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30D87E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 07:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650958198;
	h=To:Subject:From:Message-Id:Date;
	bh=58uiszvTX4FnYATB3L3Qiu/8rh4XRgW4vmfpzJYC+7Q=;
	b=maz+fG/xVbUDeKn0GMJZXRHmm1eMuiQ2tpBKGtorTOTeCj2mPw6vcSeGCfJiL5FU
	pWforlsKkzCao++AWPTWPDVEZNKGd5avz+76Z2yRwOybG72TO6YKfKlhnPxOIvFK0T8
	55NnevPu8euvfXOLM5n6z9VZydTeQwtrk0pm1hFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650958198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=58uiszvTX4FnYATB3L3Qiu/8rh4XRgW4vmfpzJYC+7Q=;
	b=Aj0IuoQCJlleqGROy8B6cRjiBA0bm/ZVakX5gq1npLhWf2gHi471/h6ISi0RkGo/
	xGj5rMV8Od5BGgolPpHP0lEVccp1CU9G8IYA/PAmB9eZ7E+7OYv46Af4rXNB08eEyDd
	4SvL/90uJQjmJWSyzRMTyGaOJJQxeHErowwLsVog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064c6e61a-96d113b1-810c-416d-a4e1-3224eea68a71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 404f78d1cabd47ec54ec90b4e52fcacfb289a906dd1aa1f81956aece918b06ed
Date: Tue, 26 Apr 2022 07:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650958198
