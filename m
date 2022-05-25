Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17DC321E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 23:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653520379;
	h=To:Subject:From:Message-Id:Date;
	bh=3wlnzJ2uAapZH1fudxNAlQwbJSiWIDiFfrqzRWYZxpg=;
	b=A5aDuKQnATllZVJaM/DEI939xLTGrsbm5p/hWzuGyUYGlaM9g0aBBXCgDOdVdmFk
	WzxVy87EkY8tTK/dEnU0PlkGRYh0bumml/TTzImqHSSb8dg65ThcshPVc39K7+KS2md
	ppnha0wPCXrXAzf+wwSyymOBG7voNeGtJ2ljs1mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653520379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3wlnzJ2uAapZH1fudxNAlQwbJSiWIDiFfrqzRWYZxpg=;
	b=IsrrWA+YVJglCEVd9xzh03F8lusayn1qp7QFkNItQEbeJtyVir6xGAyqM+/6QCNY
	cOps2NGPQUxTFDllrCEFtl8KLeJVjt4oTGa5RsJ7fiyx7VoipkTQQIOq7AaKor1sFQS
	SmCZtBg7MEuKh6Q1GdBgfDDEdHeRRmc+Y9/XUC18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd7ead66-afb08b68-282a-4266-9028-59a0e317af6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b77b083aa9a0d3da54e6006015b161a007e68f020667e2fa7847a94d2c045956
Date: Wed, 25 May 2022 23:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653520379
