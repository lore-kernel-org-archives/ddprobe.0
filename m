Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3A33EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661032852;
	h=To:Subject:From:Message-Id:Date;
	bh=0F0ihYPn7A5YDA2K1eZeZ3uYrZ0FgHZtePglAARzjvo=;
	b=FYOmt0fF9+z/T+J/fcQTt8SSGkVSRTMFmGwMQhF2qV/QuQxGPWP0Pl4lZdkF0Mge
	YWFda8/brnqKY9OqbnmrRneYXfsfSLpHmykN284EYa5YzcmoNhhWEWD2/PEB5eR2DtM
	l6x0w5gdfgvI3j3CQ9vSnlDRGKF8JYNXOilWOijo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661032852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0F0ihYPn7A5YDA2K1eZeZ3uYrZ0FgHZtePglAARzjvo=;
	b=i8Aj9dQWfZSeTCJ575LHbdwDk3ogRsZjCtFHp2MGQWhdtnUf+E78EJJedreQAdvQ
	zGV4jWqhgzo8YryVKfLt28A2bg6IzNIRl2QYQMrPhgyp3Z6WfZWuQIyNfHreKwsnpPx
	SiJiC/oJVyn3ZgvsdHFhJdV7cw9MRhbTtn0SGj4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd45ec40-acb55bab-6339-4ee3-b4a5-354986f430b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15e00576bb28ea7027f3ccc38a7683bb46950459c6397aeae3dc11ce0e29c995
Date: Sat, 20 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661032852
