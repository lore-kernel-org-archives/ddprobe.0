Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3197E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 06:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648189018;
	h=To:Subject:From:Message-Id:Date;
	bh=Gzl+oG50XO1UQGprzOHdmq/8i6lXlEhmohqzCosEJ7g=;
	b=l3qa4C9MOALeZc02mTAgxYw5Oc7KKeISWbD4ROlwawdupqNMi88J3Q+wICAwVvJY
	DKj4QLuJAX/Zoyd7g5zq8FlYurGWOAGpOFI4Uqn1bgeXjz9lHW9OwPBbUOgwUHVC7e+
	tGPf1g7wmc6Z+CG9+39tdNYPDCmMnypl20IlE2Hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648189018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gzl+oG50XO1UQGprzOHdmq/8i6lXlEhmohqzCosEJ7g=;
	b=SmGgc9JZ0AXNgvz0p4c/9puWDPAiejAREl6FiTpSfVJpvss1NIZkC4rpAH+TmIzM
	Iaa2dgLloN9qaf3WKyr7CdMDlyAZ0zRa3SPC14z799P5yeosVY7jqMpPHfAFKCUbZFo
	nbi4qYYXmcXSY7OIBYTrY4goXUxji4DP+sCxXg9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbfb8909e-9cf8e29d-2557-4524-927f-f9f3b9888fef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76476500db28afb378c9bd23e3723cea373b87a495643d0ae82f72a7dae56f37
Date: Fri, 25 Mar 2022 06:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648189018
