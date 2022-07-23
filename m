Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99A7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658579812;
	h=To:Subject:From:Message-Id:Date;
	bh=d5YHpgkUdsIEYLYub65N3+mm+wgkbq17m/uxrId/IHo=;
	b=aYP2GZu15go6/CjHEFA1obig9iaxH+FP39utdSnzV/8nQJ9SQPL6swP8Gnp0F1sO
	c2w80Ak4oEIsWspJNmla30Q7/FHEI2xBhDXr8kGp0zvNWIxavRxG7UObWWL0yUT1i08
	m2HIBre6+OLss0hHjo+cZ+YWJnm/rsNi1KYzuKKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658579812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d5YHpgkUdsIEYLYub65N3+mm+wgkbq17m/uxrId/IHo=;
	b=DmeEwgNSCzsl7CY8c7fwidNUcZMcvIP1Z+JVS9RRuSspU1bpB55nBgsckPm/QPZx
	gNOG6WfTy3STZBRvIlXHEIFCpVvR80ifREUaLCAzxjCCqWpk+upPN+G2QsgcwZu+4Xp
	cGLecElE8W1QgitQAlBpj0fHuYzVXag98p/rcTZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b0f803b-efc1de12-c9e0-49f6-88cf-90f9f3e6a3bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87d5e5262fa56ef5b3e996c572a37c59e08646e48bbf4dca539dd8bbeb251d26
Date: Sat, 23 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658579812
