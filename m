Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDDF1841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653620339;
	h=To:Subject:From:Message-Id:Date;
	bh=7PHY7GAT8fW4WUlqA36wrAimWruS5AOPbjL+YgbReBA=;
	b=a8rNRYbhHglUxDpsVD7q2QPXPMRISAfAEt73wG8T1Q47+xWat0i2+LS0slYVaju/
	nIX4ZZihj558yd8JRiGVRm4IlpKdGRD3aIaOjpSukhHXNJJpEIQMBDlzH/uEP0cuq+K
	nGjJYDVnUJhbpgr4JAoK5oGvjmnhdgXv4QduaH2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653620339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PHY7GAT8fW4WUlqA36wrAimWruS5AOPbjL+YgbReBA=;
	b=Mv1yjq6JwtfOZ8jr4FF0ULikuf2lV9IAUhHPmkpnMNkve2xqzDLXSTWEk3rlAhIi
	HUUhKJVL4yrf82c7qW98r4rgeJxJxtqyEWUNjT3df7TKoz9nt6wr5SnLY00iPJNrX7Q
	3IzGHhjCMkV14NvfTe4xjtzsvj8dJD7u2LWifdb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810373f224-a530e454-07f0-43e7-b182-f24be207786d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a643d7e8da32d3be70619d38d1cb74a0e878989b0f3981086339949f32b9d21
Date: Fri, 27 May 2022 02:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653620339
