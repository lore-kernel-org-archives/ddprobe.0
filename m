Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D9228F9
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659639052;
	h=To:Subject:From:Message-Id:Date;
	bh=S46Lv+3qlu058njShtp3gmChyk7GdCTnGAWGCQP0exw=;
	b=ARhrT8uc2q+iQCZEQTA5+LnWp+aSBwsNHULCfRrsatU77I2mPGd6Zsih82YSv4Yj
	+Nx7NyyayX5ZhUe6NUd1zG36XdxYdT6TkB9Auutjmr1uxq176l/Cpd2z+nwUQR0dxAl
	0eA478HJsw4ZfnkZ4wVp+LBP8lxwJfnqHXQqCpCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659639052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S46Lv+3qlu058njShtp3gmChyk7GdCTnGAWGCQP0exw=;
	b=XRfVX7tYLSaGz8iI+k8rYKVqGLnJ9hhzLXvLL8pefQzL50BXnVFAy/GQ5x6/GvUn
	yczmu3a5UxaiT9BuEnCXUY7jTEr+tscEY7d0GrImYgjGlAlaMboQ0yRFX1EGluUrE+W
	5poMrK4yduzXnrfh0m8ZU1mq5P+ZkAAHzx/hB1e0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a323923-6de2498e-d422-49a5-88fd-8aeb0bc374ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb4780eaf5644e86e973445ab3fc4ccbc6b49cc37bbac41a450550cb7e24aafa
Date: Thu, 4 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659639052
