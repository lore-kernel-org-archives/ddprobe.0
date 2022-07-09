Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28020A4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657353412;
	h=To:Subject:From:Message-Id:Date;
	bh=ywo2BA5dfOPz5I3gLYhyXAeWC5+2qFX/s5+FgMHu4qw=;
	b=HOwyGrWL9ixZkqFMm+7B0c//u/pgDgLpGQQ6jd/ZcXZkdSS2Hl3ZgT/JvFKfqxgN
	nxvRgbkS0o91W45yASyxU6bnSSxUWqhLXgmfFZt6gTDJbwrOLV40jEcC9hHAk5R9/lt
	2SdRZy6fpob41RHThWcZbQJFfpzjV38/5RyP9Dmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657353412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ywo2BA5dfOPz5I3gLYhyXAeWC5+2qFX/s5+FgMHu4qw=;
	b=NNYVHWwMdsp2sZPYOmFO2Sj5hHzEAR8FQGw8VFWEqOOFCcCOF1LkUwPf8FWTs65i
	xnKmCp8RHzwm8vcnslzzMtlk733bi/c2TKYMJ7ll72+hKko9du2jdyQEfYHBuBrg3Nb
	rzbwY86C/aSxZhG3W+5EGrWM0LF+9lP/VXBaf/PQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1f61f0a-b3cb19b7-d4a0-458c-b066-206379f782b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35ca8174be3d4d3c890fa1bdce7294acbf82b48a48f7567d75424e70f32da81d
Date: Sat, 9 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657353412
