Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF917A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657982212;
	h=To:Subject:From:Message-Id:Date;
	bh=veY3hvfUTPaW8VvdwbHHILOd1caPvjB/bnA7PLgrW7o=;
	b=TPpk0z0WP5wrS6XZehgS0SBbpxmJAk9EtHhtipgoLRv6T3kav0SSGZQF/MCDwMhu
	HV47jJycMkEfa82tXY+bjcLV+9I0SDF0GWF+c4PiaI82jUg3U6/WWixQCxmn1dtEKis
	nrv+HOZeCn24CtX0YtSRp5QlWSTXtym/kWsUZwKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657982212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=veY3hvfUTPaW8VvdwbHHILOd1caPvjB/bnA7PLgrW7o=;
	b=BwDC6LQHHYut1uaX+f58wp2qO1UjkNI5mveh4evahbLkX78L2xmtHmNu4L2zBSRw
	tGDeYCmqypvVWUTFh39wpBCef5xpnnWvzC7oQxkI+fcpv/xRTllM3kVLkmkh7qre/Yf
	BoH48fHXPDVg6LpBqzSBG0893gj9jMuvB2iJbKjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820770d8a7-d7c6672d-7caf-410d-809a-c8c9924b0164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4457183654f34e990ea75ceae9a1c7e0c604c5ebec2f061a9a88227af4b8501
Date: Sat, 16 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657982212
