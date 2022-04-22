Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1C123B4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 03:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650596458;
	h=To:Subject:From:Message-Id:Date;
	bh=Yr2Up9YASMmQ2CPA9+n3y1OrU+z8en6i8FSSeXYNYlk=;
	b=C8CqpSWUuqQiwtDhFdSfhH0uHHg6DdcgMN7xsWTg3/0AJU4YsiZnceVcOGsSL+EI
	JGUY1fxx2tn6c6OzMwKMY8lGi8DGaVS1QuI0NYH2y4eWMGe8JHBSaEGBJG0ywxghyUA
	8HcOfvbLWiPnHiQkAQEE0vWdLZBcsU5bJjGtkY4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650596458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yr2Up9YASMmQ2CPA9+n3y1OrU+z8en6i8FSSeXYNYlk=;
	b=Co8sOXEHaWSTy6tEr6NDDESEJj60VGOJEnnrWR1SkYrN6kH2EKJzLS6s4y1Ba8S/
	6F9iruj0fMvZMC3nmzLZTksvycGzSlxPfPN/dOqAJOTT/hrIVrAfWIgJcNWtgS8hM8B
	5XTzNmRTVm6FjUTLb1kPAuDHWqa4KwEUzUrFRvPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f372f29-d1f1391e-4135-48e6-819c-6e2f7d48d75e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a843d65c16bde1187509194d34e2d3d889b49518b6aeb34f696d807d32e928e
Date: Fri, 22 Apr 2022 03:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650596458
