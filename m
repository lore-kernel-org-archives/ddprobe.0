Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C7CA52
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647974185;
	h=To:Subject:From:Message-Id:Date;
	bh=+YuPrgrtyL5axDQG0VM71vBh/xdn/SENzI00lSMcitk=;
	b=AmV6V5T1Nd4cY/e/HAZfi8ikZwY3Pw+PVnwIaCl7gD8thBampdDPrkB49ScevOOj
	rh8xMueVs4Ml1BBP+5WKQfwMvhO1+ksRuy0IofCmdslUVq+gwLdmYkvspdXrBEL+WyO
	Y1++guD4X/I4BTQLTgkgHz3gUpyjcIOWYgijTe20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647974185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+YuPrgrtyL5axDQG0VM71vBh/xdn/SENzI00lSMcitk=;
	b=GqlMrDtfUSrwpElxzxc55WJlyXdIGeTu+HaxMzQNDsOU4Ub/gSo/syGAx9E2pGUC
	25E/QjETIiCmdbeK8W6XEBLK/mGLbW6IJzPaRF1xdutPfL9VkdikQWY8ASiqQDTsVXj
	firPtbMfqajoGYDn9i4s5wF3Ox+qbgSIWt0g4QV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2ea775d-9da81171-f885-42ae-89b1-a7715cb14923-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6d57b74641738129011c165365cd31a00e156bd428b15a7278ca0d6fb505939
Date: Tue, 22 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647974184
