Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284854A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656971212;
	h=To:Subject:From:Message-Id:Date;
	bh=Zh5UDUjHbjcoMbd/QHRFlzOX7fjLrxFktF43e9k2G8g=;
	b=EvxqY0kTuMhSdWImqS2WjzeBGYF/CPf6aT0fDPOujNY61+sm59TfZd3INEkCcq9X
	+tzFVJbRoVd8Fl0HeR2xOl4uytfqhlL9l3WFALTXNliEiSY66BWATDMuihVdX1jjWs7
	JcsCJfQlSQO6euNz88NM58chbiYipoPa/mDJvQCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656971212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zh5UDUjHbjcoMbd/QHRFlzOX7fjLrxFktF43e9k2G8g=;
	b=dEvdLqiiFX/hT7/oyG8DWdg+BEq7PuxA18GPWL/8ZoZVIkebFWosio/mjrOPUDf1
	+x4F3DtUD9D/W5j7lu2zM821Z381QvsPqZn3Jsmvt5k+6daK2/dBs2jVVfXqMVbKV8Q
	Iy4Ji/1BqdrFt/WWbk6927vNgsw8UvBumEUWrEY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb2e35fb-4cc712bb-77a4-4c2d-a51e-8548f64b94e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d2cdd97b401d9683899a88a21741210fed386529e3b219449c8270616d68382
Date: Mon, 4 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656971212
