Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F08367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657163212;
	h=To:Subject:From:Message-Id:Date;
	bh=HbRDl0wKFwyZM+iggm+uWLt8FapktHvIb8BxvLEOU2Y=;
	b=KY5v5G06d2flK6t0ggGud9dnAtwIRmvFvc4lwoiFBcQ0mlEPEf8LeBj2UT7dF2Vc
	50m7zLR4XiWv8fR8sH1XHwkFK6kFDJIXYMiZ89giVkakxC0xPXSfAM3EJRCDxqkCKB9
	FfoKyZxlwnLbnIuOSUE0jMP7INAhskIkHVs9LJJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657163212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbRDl0wKFwyZM+iggm+uWLt8FapktHvIb8BxvLEOU2Y=;
	b=a5beuaJVrJp1IEvQ+yMyKUutwnf7JHxWEC5yu0lr0eI6yRdYJYkwy+5Etd+JPYW+
	6eeXWqn05aJTA9sIXn9GGBOPdoF30knQvAYAt+poUKXsczwACMuQfWuc2Mos7dtUwdy
	sAmm5GiDSFaS8gtqUy/Mvt+aEb3ee7Cx5uVUSuGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d69fe60e-8803fa4f-6ca4-4d52-984f-3c24e681b5ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf63b4370cda56081c74e6f5f03df7946c43d072543b943e056c69d4ae22644c
Date: Thu, 7 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657163212
