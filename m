Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E65366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660300252;
	h=To:Subject:From:Message-Id:Date;
	bh=QVOfbuW851laV+xtyo16ghq6Kl3o/xYS1oDnVWDs9KM=;
	b=CpRjeHhw7YhsG2h8kB4lcNTTHYjYSArmjrbzzcEtNqjdluoZpMdMgyf5VQ2fNgJv
	/PpJ8IyNHUmdPQiIDh1MRQEy98lqTn7ZaGf85/tTWw0WKGGT1Nl7xmE7iePReaLXriA
	26FAcYZcv3nDQ4wH45DSBYefNQQ/p4J41NPihmhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660300252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QVOfbuW851laV+xtyo16ghq6Kl3o/xYS1oDnVWDs9KM=;
	b=GnspwIONYkDUXl4Tf/Ixr7vvwbURSJwzr78vo8v5AZc8csDh+C94MlS3jRmiCycJ
	P8McL1QiXKNW0KlIudXhF35dZjhDDmkT28LqahpPkQKUl+606VO/SwsrdhDIQfpG0DK
	vuNq4xVMoAEt94vIqPhPwr94wGcthGOU9Uc0zh8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182919b55dd-e9fc9b1f-0e81-47e9-9343-db12e9c2e2a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abc817a36344711fd4064e9f42a4c0d68b401e29b39ccae66fb9acddc8b89969
Date: Fri, 12 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660300252
