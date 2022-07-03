Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFEF23A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656844612;
	h=To:Subject:From:Message-Id:Date;
	bh=F7kzwBDv1I7b8ZTdsJRhaoMTEQPf+SmvqahJ2bmmFIs=;
	b=iM94W8HGJD/rqwv/ZgIiNDuMivrAaVuOUPCVvNt88bk/oDrd1/M15EhPZMkTAgVE
	ZntfW6kIkkqQdL8rcu06ZQau5nrNCm6AwaP7RYtt8BYuRMwyNNZOaVI/M2BN2oaKKTL
	3xHVs+qc9GktiAbGoGFE4j+xvzZpV1uC+lUT3IEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656844612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F7kzwBDv1I7b8ZTdsJRhaoMTEQPf+SmvqahJ2bmmFIs=;
	b=Rtt0fpsV/Iy0Qq20MYJ4pCdRroDqONkYijoOhf+xNCj4IxwPw6kJxGFXbbIh4fbZ
	4UUU0V5NnOe5TO73eqxjjuwTjs4fiiWTGlyrF7qr6BNkSangZl+nE8hYCsUnr1Cgftk
	3lNqegbhJk/4tLzghsNvgrMQ1TWkQWQm4v/YzrIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3a272c6-3dfc5cbf-4323-4671-865b-70845d529fcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d3ea8a9cfa9e0ce4ab9acbb18b461e02dbbfead917c10efddc0f4dc5edcdb00
Date: Sun, 3 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656844612
