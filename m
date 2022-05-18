Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B4129AD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 22:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652914259;
	h=To:Subject:From:Message-Id:Date;
	bh=a77vYrrA0EDyLd5PQbQYnk86TikChXSePE7RHgDKBZE=;
	b=dNK8QWYbM2DB/YTiV3UgYXdhIuZAdHUMBNPd6aaatx6JQrgmADYSNTBv5tkqaHwR
	XGRbj6/6RdhjWZp7u3MXg8G0uDURJvkDK28bXU7Yy2KcOc6L3vhGlnPf7L7U3NPGkcb
	1E2NT74r7l9g2WFj5VcAZ5lTb1gdJQDoQgQwKuc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652914259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a77vYrrA0EDyLd5PQbQYnk86TikChXSePE7RHgDKBZE=;
	b=MzM7cV2OAodYrSCYbh0A3lPe3FPUlThUsB3PmBOjjPE9vXi9zpY4ThpMl22HzhZW
	TG9fBjcG2EZ6Dv4OZaSecEVFR78ajVv82fxs4s6/WeXwTL1Gdx4ey38Bcoz6IaWUh/d
	0Su1HD8gEZQsl8k0zglffKmXE3iGKc4zSwwIULRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d95e05a0-868b9134-4010-4e2d-b815-5980bcc16668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0331446709d8bb295097774fa4bd16de949d9de979f6c0a76aa6944c87693639
Date: Wed, 18 May 2022 22:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652914259
