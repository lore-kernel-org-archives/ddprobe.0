Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B72E62F
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657964212;
	h=To:Subject:From:Message-Id:Date;
	bh=o1yhzG8bgIZle+07ERRbcCbKztwmjezDyfbsL4K+J7g=;
	b=a2sWTImwJInelzFqZg5/ApPf84ewhA+nXr4e+o9sCvMV0NXGQIbPaJ+D28EdfYtN
	xzgzaW3WoFmuZRotRrnJgrPallMEmBLRC8qf5U04S+eAHPyqSp7/4xKFvDb5txjx7i3
	oVd3qVM0VXd/qpHiWXTAG5g5+zruZQynHRDdhzpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657964212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1yhzG8bgIZle+07ERRbcCbKztwmjezDyfbsL4K+J7g=;
	b=blJFZq0u78xU9ke1+92wQEY3d53dt7HI/8bpFiBK3fHBEURAnUJCNGRt7ZKfm6QH
	3/1/1GKp9hdKngYDYR+aMpwT/URt1RmWOkGNh97jA1UonUnd6DgGnVPH/JFa/KwJSMh
	8jNuBUk67zE1N4Co25I2ZPsFh5ntl0A1Lx+Ewp5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182065e30a8-2d6df373-4161-4713-b11b-a0039d3f097e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87be30a7667516f14a24241689efa40f7fc743b6d6c577d962222b365f70ce4a
Date: Sat, 16 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657964212
