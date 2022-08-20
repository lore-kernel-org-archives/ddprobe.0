Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58729257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661000452;
	h=To:Subject:From:Message-Id:Date;
	bh=YOUKmN5z3XZUNBfOq/7c9weIr09foDoKJnqJ/kL6DyI=;
	b=OtH2bRBL1QsZoMZKOjlbihg37Zrq6aWOdVYixlD4TCMw5u+rQ2aN0QB37Fjkd071
	sFkT/p2FJDdNfn3jXefWLilZTEfo1BZugcVvq2GWTCV36q+1Eek9byPV3ZjO/nw94w4
	Xv6aQWb9pdudgACCnyWKIFf8Xszrq2ZEabS/GKV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661000452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YOUKmN5z3XZUNBfOq/7c9weIr09foDoKJnqJ/kL6DyI=;
	b=WdYgI+Vs73qKi3O+cppbtvbjDHDjtzrzQeGxaljC/oV96XWacjLPUPbCCly4Opfc
	omZ/WVh4vDV2LR+Htf5n8RvzG2hhnDQ0hkKa0IPVuz0EupwvdwYPqaG4ScNNXtMbdQl
	wlDCu4D0yrahdn97X0C9Z92lOuk1fRnIr3EOPvpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb5789d0-bcb74e9c-005f-4df5-b600-824a342874d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7b113702b31e4cd1632d6f0cb35583cc6337da466452ffa9e751376d5735183
Date: Sat, 20 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661000452
