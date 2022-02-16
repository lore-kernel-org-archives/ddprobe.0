Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F673674
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645052485;
	h=To:Subject:From:Message-Id:Date;
	bh=V6rGBgNXIyXhQIQ0K6fTyw82tndN4N8cgX1zD2Kpvq4=;
	b=lcB9fXpC2BTJUScC/VfbwSCmXep1r+An/X/i/H45vVjQXDX2VeI0Hl/ITwtiHMWe
	Lvddy/PtXlQjQtRPnVA1vjLbT1wbV9Flmppn7JWrFFRBP8ZhvulzHZFhQ9+M29uYsci
	uqi24B8SM2cgwuzOulrs4ChkYlUw0Ft+JfW4mpmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645052485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V6rGBgNXIyXhQIQ0K6fTyw82tndN4N8cgX1zD2Kpvq4=;
	b=ShBzjQ/o2aqtzYr0DV39u8R/K81pHzhLcrAxbj51sN0J7Fx5poyTRFP1D+q72HQh
	P9H/4Z0PDdN76i+M0I3PlM5qzE0Vp1OvcbUleSIyGKEvfMOjn/QF5iFBhPC3RGAAe8D
	tQJ3JP76chVyyb6Hh5HWbHjWVZoFjZWzQEMGh0N4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04c4dcc6-20dcfe45-cdcf-4270-8023-91462aaf9c99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8b951c3873ffcba428c2b599bc02a87185a107bdb02230d53cfab65eb7b4b42
Date: Wed, 16 Feb 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645052484
