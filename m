Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5E37A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645784784;
	h=To:Subject:From:Message-Id:Date;
	bh=wPNZl83VxfGt5UwLs2VH/vsnDuflkXOVbP/WXUzQIAk=;
	b=lm7pF9gfFUBOW3+rGw37O40XnAqOezjDuUIxyXBBxu7vPAAEu1v3PspSyxnNEHtY
	wzXjRFFSwp83ewSkDjciKdPEc0eGapAXRWMtXpWafhAquA8JEo5p6tooduZ225Nn0Vh
	JofFtzmHcuzScokfAN/hxDZNPzcIQp301pUmvRhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645784784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wPNZl83VxfGt5UwLs2VH/vsnDuflkXOVbP/WXUzQIAk=;
	b=ENViEp1K2XEh2etdd/hIKcyypZlsfk3A8WRzD8LqIgtofzUghoBpe14kOE91J+cu
	Hyc9/iS/r/MrN717mX0eKNvPthVpvz+SbemYxkUWOH84Qj69JtDaeFnTCyF0Rt6SDyE
	n/YIQbmba+cCQGaYNMp/UIsVlG4qbl4WB3XYAvP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f306adf87-1c8ff66d-957a-4ad7-a5d6-a589d2c0ed31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ec146466934a7fde0e17a5bb6f9924aa60ab11bc66a3c533557d62c7052b7be
Date: Fri, 25 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645784784
