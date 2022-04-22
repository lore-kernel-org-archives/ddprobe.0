Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1029D28E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 19:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650654298;
	h=To:Subject:From:Message-Id:Date;
	bh=/366zhoHqki8b4qyVV7cvzSZlgsU0OCiip4V8BV0LYI=;
	b=VuJ4ih4cnIkzg9lDt75OyFAHFBLK4o4DKxwlHBStH1PJjY47YJhjPrcqfHerJXHx
	xCmW3GjzdQrjwmQec+NJXmSFePpxcepIJcvQ4TyhPanC5hJkyGtN8Jt8XUr8tS96h5c
	LRh5/VJ87RRTQGiEqCfLQS5aAhQrFaSSdmgRgOI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650654298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/366zhoHqki8b4qyVV7cvzSZlgsU0OCiip4V8BV0LYI=;
	b=bVPIE812cjUjLwDhFRGUO/e2fYL4BLewGQYO8/6xry5h1JzqWCsm8XFUnzNtD4dq
	TjLQT4uLbfnLVR/oYOcWAsDBQEzbUIwJ/8FU3dEGOxg8wEoGCVDHnUtZAXAYI4V3R4l
	ELGlYMm2xY3b4Lf57/AH8lVxg5pY5H/NwCkzeljA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052a9c0af-d340445d-8ddd-44c9-b5f9-6f9171341b1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 409dd2696d6e3d48a05049569791a48666e4bb29aee1f585499b18a46ebcdec2
Date: Fri, 22 Apr 2022 19:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650654298
