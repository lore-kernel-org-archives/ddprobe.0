Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC41B15AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647564085;
	h=To:Subject:From:Message-Id:Date;
	bh=Bu4o3iKgSL8t7auHfbMcgvrHl5s5KCg0vGmKQxwkA38=;
	b=G7u+LKRY6ZZI+50eWq1A9+EDeO7Nyxno3rvDPJhmmu8NqYsTPhjy2PUYxGVUxi6Y
	BPhrP/19+5IYO1nJNLNjATyArJT14rrOWzmcKYXU+1NaMo5wdWfJa2ZtA0+SV4l47KN
	h+CCSEMWAd7xxMhYDi210HBh7McNpBjlUx4Gc5aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647564085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bu4o3iKgSL8t7auHfbMcgvrHl5s5KCg0vGmKQxwkA38=;
	b=DO6OvmhLLoh+Po3rz0HkNM3akGQV7rZaXUHWllaYzwaqKDeBUjnsVyLd+C48WXNr
	d2trLi2bSZUZbhmM2P9WZ+BjWgV8R1IhsZhpRSxjfw6p00G10KCydqMbCBtvkGGUspA
	XRDvAtHuV+a7y3M2nH2gptPSOpbB2R29ANUZ2pDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a78d64b-22171003-288c-404e-b733-7edb8b7deb5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ab384c89461da8606e61044ac736d491c8b91e2b01f1c3e75a53c38df9c85df
Date: Fri, 18 Mar 2022 00:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647564084
