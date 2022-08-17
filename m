Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C617C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660695653;
	h=To:Subject:From:Message-Id:Date;
	bh=2C1uvUq4NCyMSdNDNI9uQLX8vaKCWpVQy+DzbBpPc74=;
	b=KGlBnSwa3ncGHBBaeSqj4hwDfOVS9IO4DFQgErh05U5xRI0d64FGS5bhONx+RW9D
	cahINqNtZ5SJ72pyOE12/zdDFVmB0Wjv+lvT6d2ql+MZxLAjXMWUzc05HpE4K+d+3oJ
	kZVLcydSlWLXBhhVwOrcN+K0UDNQC+5f+iOnGz5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660695653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2C1uvUq4NCyMSdNDNI9uQLX8vaKCWpVQy+DzbBpPc74=;
	b=kwU593QpVEPR0oNnWlXGfFxk7fadETfvB+2Th0G1OrczbcsFirAUfDD0RA5E1gMA
	1KNQ4uLoPOhrB8ccJIxFGaveEHO6rOxuTmpvliRjinSexYinZAmd0rgS++qeK5UC7Pu
	UgfazWm94ijqjYtI0dVyj1msei209jHU3QY2T7w0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a92ca93c-8a090148-e4e1-4b3e-98d5-be070d301de6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19524e85893bb951a36349470fe87177604886e3824b4d229d3da44286d93497
Date: Wed, 17 Aug 2022 00:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660695652
