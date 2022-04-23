Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034FB7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 13:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650722038;
	h=To:Subject:From:Message-Id:Date;
	bh=fZcurRWB4jidP93pkwhDuyQJsd1sH/NGes96T/boNEE=;
	b=MaCkBLypq6Rn35tCC2OSw5z7cIfpuGK/wa9rfmjG/DSFJsKl0C02CcsE8/VRYJkK
	VGxNP0l97EupzGY+zOhG/FxV0A7Lt0/8hhCfPqX7+frn6f4z2ZfFzgAPhJatLQRwD81
	aY69kxeOV+hQh9TTSCwLfhdR1/BK8tJsroe5PAFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650722038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZcurRWB4jidP93pkwhDuyQJsd1sH/NGes96T/boNEE=;
	b=PCmRbE6e1HvRVSzIzfK4myJDp24+CaQe69RFR/YCZpKW59D+fbiZq3i4whhjIZdV
	l7+8kOz1jF9gFa3OgTW0RGTnzO6XN6N+FwAg7VcPt1ZPfTta2XdXiYVxrRb6zUpQdpM
	V9Lq65dBKwc/VYsBr/xQNaz6mqnhOwR0Q2s3Rv6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056b36209-719e7cd2-3433-4936-a9b5-ad30bbd1f5ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a6876e7591b83537c009eba6dae6d2e34352745a16a2f38ccd6c3ec267845bd
Date: Sat, 23 Apr 2022 13:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650722038
