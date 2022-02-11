Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53BC7F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 23:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644622823;
	h=To:Subject:From:Message-Id:Date;
	bh=cWp8aeDwDQk3+jkdGZEiIBcl90I0blt1moQm1d8vnaA=;
	b=mbXpsBgnc0T9V3rbRHOBPTdRPhPYiE3M5rTEVCoH1t0LtFtT0ViPRvu+U1xhytHF
	7qYQNOv8V0CmX9AqIEZejCb/MejicAq6JhcdTIBktuAZN2726DlY4XGPkmeYyk24q3m
	10VirQYK+GOf/P5vNcn3GtcMpJ5c3KjHASjknO7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644622823;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cWp8aeDwDQk3+jkdGZEiIBcl90I0blt1moQm1d8vnaA=;
	b=cInh50kSTmEwmWYpVleNmYtoQgIK0Qiddkis2vSk9orafXlNLmunLTFiI9pzIQud
	ZcYRKt2EwuKXAVPtIBkqHth9AaIAGtyTzIzLT+GHfpO4Sf8tpexZ7sktmFOQowLUiqm
	YU128gE+yambosxeyww6YN/yPm2lOjvYbKdzpwBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb28bc26-7fe29bce-cc47-4d8d-9bd6-5e7422992601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7674dcbc977fbeed7747f13238ce1ae9f97cc05b8ba4dc38e99d1d43753ea79b
Date: Fri, 11 Feb 2022 23:40:22 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644622822
