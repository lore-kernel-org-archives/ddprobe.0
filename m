Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A818816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647158185;
	h=To:Subject:From:Message-Id:Date;
	bh=jfSrzg2m5YBwoq9E2I6kXIUvU+SSqhMaFcig/VhMyiA=;
	b=OUJ2lu/v8BUn5qHG61SHDJGgI7hmBnzRvtRxboNsfNme8LjbRQyncWkX34huYm/P
	yiDA7n9pxPT4jQMldWl56Y1cDfnvJVsye2IZ3o0OB3o55NnOBOEouBF0boLaeInJkJq
	TmySSRAVfTxeFn8+Er4FyYW8yF+Fkqhk9InIwhHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647158185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jfSrzg2m5YBwoq9E2I6kXIUvU+SSqhMaFcig/VhMyiA=;
	b=dKfDb5DZoCM62CAwiILtrczc8ENTGLM28m+Ps/sIZeutwVBVJGLDAkSTcViL/nCR
	CWjQsOUswnDxJV2AAE1i/D2mg8ERm7Y1Q5DwF/3sHgBT4Pu96RXWYg3tNp3dxnfLHb1
	q3CG0UtcL6dhb4PL0YcnfoI7cXKnUjNnTcBH7x+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82474b57-fdb64b03-a800-48fa-b2ea-204523dbc3d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39ee0effeb19eac63991241198ea2307a7f0713ad171981a20f6d5adc392b4ff
Date: Sun, 13 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647158184
