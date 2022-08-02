Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C1A7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659473452;
	h=To:Subject:From:Message-Id:Date;
	bh=pFbjPO2XbJQDnfUayF7ee/LvVhW6uIVO5IuDZH3FFZs=;
	b=OTTHug7Y+Ocok4QbT6X+1pt8VnSvnnGpjpxnYjzSPsrg4MT1McbNX0+cThokPMaK
	ZHnmWrukLCZQyYuQGw58M4eHXsypK3+lcJjat+OejMedfY05nL6Mb/38tcWpUDwoqyf
	PMend4PJdDa+RQY9qiljYeQSPs9b1MuOT8NUzG5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659473452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pFbjPO2XbJQDnfUayF7ee/LvVhW6uIVO5IuDZH3FFZs=;
	b=JzACutEnplGkz7CDwCbxzACKa8mz+UEBm6Rda/xJyi7B8lDl2+xvf52XPFfRv5qv
	kNgHtJLEcdiwdjiUk7mJimlc3lLi6i5qYv4dCMFH6y7w3FBwdQr4rdOL8giEKfz+k7l
	SIL0A/xrkSDhrZO/oHE04fgPjkdi4q0ou88cHMOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260535e3f-7e192359-8791-4d47-975f-6faab0450d67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8364102f1a2c51a7e920eec2bd0c56e3cb3f4277b3d5a05acb994966d5c78a14
Date: Tue, 2 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659473452
