Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E3336D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657945612;
	h=To:Subject:From:Message-Id:Date;
	bh=k3Uk2O4OsLR7MICyTzgcdELhS/6TYyw0en2eYtsnQB4=;
	b=YtOHl6UMUJ7LZxajsCTjgdLzHwiaLl1+9bKE5Ix5uENztDk6bPH2VDx2EHMqsy32
	2gBQ3OFB0uWaWXNDXq06RMwAryJc+nk0ovNvuwYbN8VSsc6Mjzt3EX2Oq3HrWkH/TJ6
	hQ643JsrBOtwb4+qF3gIuC9Fe9u6nHqPpYONpUy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657945612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k3Uk2O4OsLR7MICyTzgcdELhS/6TYyw0en2eYtsnQB4=;
	b=IES4KF31PCJkPFbLys0XJ+q0RugM9IbF+EjaYjQgmqLF8BvPW+9Mz0GwlLYY2E8v
	TeTmtgc6CyqVsA7Q9xutwZOgRzd9WD0bmx64WsAnu27Lx5j+ESmDBf/nZU9mseYYqQQ
	9/MrooxVB48tCeY0bCueJcvYmTyD8Hzp0Pk5lngg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205426025-02bb902b-8afc-48da-95a3-fc089c0bf1d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f49dbdf2223aa2cf399cade128927659cf519748485e088cefc2555ed2127e2
Date: Sat, 16 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657945612
