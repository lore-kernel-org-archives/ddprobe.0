Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301897C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 13:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654780019;
	h=To:Subject:From:Message-Id:Date;
	bh=uiGYyk3Ebpy7fSEm+xduem4JlB/DF2I91QjtomvboCo=;
	b=MHOSMZILML4I5lSPfxnKRv1DVwDkZES04J2iXYtjMNlA35bSmDT7SC9kkCOJXp/B
	kiTlaBnf610bLvZZ74rsY1ApJxSpFZarawiyEcoIMptqIxfVVDOYDI/H7k1KbbGH67B
	WT53NSBHCaymWjp8Z6jJFZOOuhIXstNs4WdG5s2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654780019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uiGYyk3Ebpy7fSEm+xduem4JlB/DF2I91QjtomvboCo=;
	b=fWDMi9Sjb8PsiJBQjjzWbZfjhEI/KcLcsD6bZ6hZtQDoDRhjwxNT2rD5vjv4IlGq
	TCRF1PIKQssgDFnRKez4dE8Fa7tI96W+1VcZl+aH3lyEOqWgSyavvdhuXW0VAbSaX+U
	d2Or0kcsXldrlQBm0mjcssN0c57mqpAq9JupuI+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814893422e-7e36db12-e29d-4f68-919c-4435fb62434b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a1127eb1cbed7653d0ff0b29ae85f8621c90b60c5e9d3900adf5717dc0194a
Date: Thu, 9 Jun 2022 13:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654780019
