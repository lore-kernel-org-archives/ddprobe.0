Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926B1369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645851984;
	h=To:Subject:From:Message-Id:Date;
	bh=y9kThNRAZcy/sCyS/nMErMpupxU7YRuMPDKOodrsbe0=;
	b=iiTKIvE2cHVJ30jYx9CA8q2e93+HzW4oqKouzxFB5BNaRGxQGEJOD22OkVJ7OeF6
	d+VY+vUftNFwRqRncTPHS/J+1AP8zE09GsGcGOw6jUl634ofzqx4WgGX5V4c1BCYPXh
	rkPdaQicfOGYb7elAjrS4CrGh9crEeR/W6eN0mMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645851984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y9kThNRAZcy/sCyS/nMErMpupxU7YRuMPDKOodrsbe0=;
	b=bl6mPz5yk+mEjOYYE5eo6wQLAhqvgTHYQ1kLc4cLO5B/4TIoED/820Z9m55gY8eE
	1qS/KzOhp1nnR1LDuvFPPLW7setK3dHaf0Jzv6P18lUE+lq9PL7vyfgyfDY55QtGDcF
	uhMTp6yVSJRXoaFHcUWJ42e4ur3SWk2UiKTGycds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f346c437d-8e4cdc7a-c50f-4216-9c40-8454104f5c93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81a5c0b0342ba77b84d650286896c607539151043db71ddfb1eed0ce20349fd2
Date: Sat, 26 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645851984
