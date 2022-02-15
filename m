Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537B31365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644911784;
	h=To:Subject:From:Message-Id:Date;
	bh=Lg8Bjd1G3g45x442y+OLL86Ujpar4TMmP5aVsvyQ6gg=;
	b=DFAHAsT3u6tV34/Xkfzk/gjB3sdR/Mr0EWtmkNoQPa7OqLp24K5xF9xYVHYtt8+5
	eVy3nJaU/ciq+t2VxLcRCpUfzib24xP++AiRUK7asrTP3+YHyFqUpkGQnSrndibXdGr
	5HmK89FGVvZEgh9wt+jIaEAD37Rd61UFQ4oAAJ8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644911784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lg8Bjd1G3g45x442y+OLL86Ujpar4TMmP5aVsvyQ6gg=;
	b=GamTZ1DYjOrpONy8+sTMCcStiQXXsuG8naENhmoZ/NBDJ0Mmex8y6YBMN9asiCPF
	AowcqXB84xPiJy+Y8ljtS0k20vsbHHi+r/vL76SCvfXfuDISoar1zHcjlwUe1vHKG1Q
	aqax0ZuJNA86m7WrTCQMRy/P4/aIA1hMOQrEzD70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc61f344-c8a8c260-66b2-43ef-9c48-1f76c37d4573-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe74a451d40045c5cff5b9be798504826e8a3e5bdee0476f100b73ed4b74989f
Date: Tue, 15 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644911784
