Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAFB7FF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 02:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654223579;
	h=To:Subject:From:Message-Id:Date;
	bh=hdHZqvbOSdhCba1ZuuBScDlJZx5joXyUnZ+qAME5am0=;
	b=hzOYV8E8ZX/1FPNx3ptl1rFxLFyiUWakpxd67GhMiu4H47Zk6mcicoOkiT26Riaz
	ZDACNfLQJdYV8/FtzCrB5lHPe39SYCvO2qeKNN/BEyn6Z56pp3T0RxDOkF1QVk4tTFm
	SPJ5byUp8FiriYsXYYvFilRF46SIgbsHeXRW/jJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654223579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hdHZqvbOSdhCba1ZuuBScDlJZx5joXyUnZ+qAME5am0=;
	b=jTepew4bpwgCyvuJi6bK30V9igVMjFG9kXq3NccYWaO7HqG35CXFzhdV4r9cJc9e
	sXYOaYAJXg5s13Oht7qUB5evfsE8S1quFFcbFIS297/GZfpVpJjI8Hl/QgKxgP+NRTf
	+xIM2z+qukEmYQUL4bUWsT8DfjUWj49zqTrm5A+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812768a86e-2272121d-74dc-4376-9bc1-6ed683b918fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 057ae06024522436a1ebc7b6e90202d0fd934a8911a7e55bf8a9c321282ea067
Date: Fri, 3 Jun 2022 02:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654223579
