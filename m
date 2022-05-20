Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F7417D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 11:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653044999;
	h=To:Subject:From:Message-Id:Date;
	bh=MTrbVbiOH6UechAGhkT+rzdjBitG/q9IqTBDloPxwG8=;
	b=BFUyaR7WYApjcGEabuX1YxHH3aYSS4lOQC67QMUsJZdre6LA4XQmtIatGvfSXF27
	Cbn3AQwXbLFGRlUgkmOZiN9ygmH2Qnd1othE7jo3nltlp50pfh8alYD8dZSx2dp+6E8
	vFZJUWZLRciUIrmOayKiTUkwyWHoTJ2ZN0tR2+FI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653044999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MTrbVbiOH6UechAGhkT+rzdjBitG/q9IqTBDloPxwG8=;
	b=ZlpIwVrI1r8m94zPYlx86ZxJLBz/3Ea0UrY6XJJCpuJpPkjDr8Fr8HPWMTGKWG/F
	UQ+Gg9QaDyhCiVsvkTZdMSbEH3DyO94Mm6af3xwc78i9mXBbeEtsR7LhBDz3McqFz8Z
	yUuD3HR4Wnfds01cM05iZZOZQdi1uym34tWwbxb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e128f476-e20c8a65-131a-4d86-97e8-a822b8c9f37d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11046279654eecc9a9b6089cf6945861fccb17852db5e413be32c3f67b8eed9b
Date: Fri, 20 May 2022 11:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653044999
