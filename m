Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D146A9
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652081938;
	h=To:Subject:From:Message-Id:Date;
	bh=UP40jRocF21gDiDrVd/VyIJ7AQx9VEjPgskNg0JQ18M=;
	b=HZG7NPKNQz3emSENmDlYzTkWhB/WBgmrfDWTz8wT2Pc1P6XdHn63Avxypbn4MRud
	7+108MiuqkMvaCKYjbpZAdrraQSs3CbMenzhI809Th5s5RHGJm/0liAQwHSblQNYhGc
	sQo9A6KaloDFyDavawU0b5jx0ugSoauMSGccnKnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652081938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UP40jRocF21gDiDrVd/VyIJ7AQx9VEjPgskNg0JQ18M=;
	b=IfT+Q4jH06NudA0/N8X97yng9bZvmSXdJL+6Lr2ooFZsgSh0ZbmzSKQ1/Vay1c0w
	LLdOj1gsytqBjas6v/tbiygoNCAbTIybu1+B4SeXEiVEXvSUdC6i9VdKuYZcgwJUWgG
	M7AA+9JWrmocOH3IAs01s0PhpHgPjRizFM2Azyng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a7c1cf42-31b42df4-913f-4c69-821c-0d9c0623e624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68a1f7546e31b0f6942934f8d62d7bd55aa1b37f6508c172b046cd711d9d94ed
Date: Mon, 9 May 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652081938
