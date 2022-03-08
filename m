Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539733234
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646717784;
	h=To:Subject:From:Message-Id:Date;
	bh=a2Rc94OLmL9bjJMnbC7aoUMVJNYBulGH3hQLjo8Peeo=;
	b=Fv5HKX/3pHnTnXRlEd7JFF1rlbmhB7ll/ao2PhRPFWRc/SvWRV9WViMO1TxtFGui
	RcFYSVu7yUUn33sxHy27bdznDZckIIL3ecR7IxQw49dc/8toFhY7MZsDF+WgpnDVP0j
	poOtAb5sh7j2V6yrZ6nQycdOCmT0SzC36A1Qmc+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646717784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2Rc94OLmL9bjJMnbC7aoUMVJNYBulGH3hQLjo8Peeo=;
	b=euCkPDYxuVxryF1DvJZPrw4CdSMoeY9dv5KMGXrxUdm0rhjIvPRwI4e8vD+qnUxX
	8cH1eUtSyeLbBwEThdhh/1llxLyIXhXTjAiXPrMZJ62rmT8dYbKwV7Rfu5Ee+829W2G
	/3i/vlo+ybb8S4Y/xFKDODz+AuPrjZC+NoWnJyvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6807528e-eaeabefa-2be2-4a51-9396-922df04184dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 910a6625d8422b9e7627af3cc88a7545b1c3c5e5c6e96b5d7c518eeaf7be9d54
Date: Tue, 8 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646717784
