Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BB17A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657450612;
	h=To:Subject:From:Message-Id:Date;
	bh=EajReCWmtZu4boYtIL+EOnPaoZ726qQ8hRQT2ar7UiU=;
	b=DzA4FSDk4+X4AZLZgtcVJT5wbx5MZxkoiiqUQxq4+CuLRbEt9eByLKtNWeJtzUd1
	Sos2BppyCCV6IYazwHJbJcEh7RTDMc0DYbC9lfACjFOIPoA1N3SyUn5vuk7Fan31x+/
	gAhgvkiYpqJyBsDTKGeF7WeIF4GfD5F9ecoEn3Mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657450612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EajReCWmtZu4boYtIL+EOnPaoZ726qQ8hRQT2ar7UiU=;
	b=KIIpc8E+rxAi2CMdtYF3uNwJiAJxwgsVqUshKevg+yr1xb5SuKuadcjUJeyW9ahQ
	HP7DdBig496FrMO6t6wdqY+zp0qqltidIUADStnSdNCJq8RJVelNpOQimbMvbtsff6p
	Gg4vtFyE2pCp6wWJQViYJGIdA+AbH2JPSaWIi3GI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7c14669-dbb46433-b228-4e3d-9717-7941fcb0a7a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d582c15eb693bb4eb6b2bbaa660afc89d71a029452fcbbbe9db32692f8c2f767
Date: Sun, 10 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657450612
