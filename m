Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5F87F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 03:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655437379;
	h=To:Subject:From:Message-Id:Date;
	bh=7u0nDqrDAxfZ9/0swTRSatj+q7+f8YIpfPaDB8PIwaE=;
	b=GdMrflt4zQb1nEu1an1jF3gHfuMvDlfxdgDjg9m+68aYsMmGxEclfyai5aYctV79
	MiQ6A+cVKTXrKKWazd/FumO2Q7xRYjsrHqXm/2Y+fDK8/dcScP2VUGaSoZ9CVJP/a5m
	1c2WszBjpDu4ysrJPsUU/K1bn/4inhdFHwmjpKiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655437379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7u0nDqrDAxfZ9/0swTRSatj+q7+f8YIpfPaDB8PIwaE=;
	b=HDZFEmZosC/dkj33iIDJ6RPE6+3C/S6UAeyk8It76l7mqCbKiYV+NWr88LYd6zoy
	vJYQ+SK9PtJH/w1Z/i2/drzAKp6/+AuZJzpJWcrwN4aIm0sifEFlS+Yr/KyEGoCtu2+
	Zx9hq/gy1MMQam2GI6HN1tEIfNGeRzBDOUJXHYoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816fc1c793-7b469a5d-7016-4434-a8d6-5cd7ddd80a9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3d91f66211fba70bc4cb4d2ede1d4413af7a90dd0f6eb6cb9351aebea104c64
Date: Fri, 17 Jun 2022 03:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655437379
