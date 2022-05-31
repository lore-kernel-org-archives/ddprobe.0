Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CE020FC
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 07:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653980879;
	h=To:Subject:From:Message-Id:Date;
	bh=U5RjKz5AZWn1wetBoSuoVNVmPOQYZOdlLexwh1hnaXc=;
	b=Za49e+VsK87GLYOhx1BsOshurYBuy5S7J7D/5VTUFmDONz2GoXK9YST0f+2ZvTYp
	RlCp8Ga+GA8oHlyoFym1Jo8oH0OEWrMEM3nRSrUAFry82ZLUZ/LYdkECiotqjByTivQ
	udUj7nsU0wH6AOGpqHHu+iXMUr0ojQ2yOFDm71zs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653980879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U5RjKz5AZWn1wetBoSuoVNVmPOQYZOdlLexwh1hnaXc=;
	b=NdtQV7OFRsfsNV8g6evh+6lr8/uwNkfDJo3EwP3T+qsJEJ9FSp96/jyUkyBF10Ag
	pLP5TpFsRWHL+UZiBhxMVrpLO/f167CZ5qhxAwwFcO/3H/VbFoz4Ord4oxS/1GUvdhc
	tD2sCAUIvgN5wlk1VJ/dDCPZ3axXYHQCfU2wNSTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118f159ea-7439ee0b-7243-42e1-9d90-35f07918fdc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a215730a6e13b0340b52c1b1a51cb4f27dc2f46fc61c07650fcfd560cf0a84a
Date: Tue, 31 May 2022 07:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653980879
