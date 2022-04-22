Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072A67A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 21:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650662158;
	h=To:Subject:From:Message-Id:Date;
	bh=3Agz/jlmmVfcQoPBj6TgYUZ2NaB5WniIL5dpfUFGs/A=;
	b=GmubmNwn0nRLGF302BwdTRjRwvSfD/CcuYn1LqIRu1iyYPM6kiLYpjldAUESLBxL
	eLYnCgnSOJnuVyUFeC0WV19ktRuPuuqhqr1Jcvzr1vwWoGQUWky6egyN6c4/o8QJFKY
	T+e9YgDf2WsM6PM2axanTSNmfQUdlZltFPlw77Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650662158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Agz/jlmmVfcQoPBj6TgYUZ2NaB5WniIL5dpfUFGs/A=;
	b=jPWeQx9KgKzBR9FUXNkisSasTFtF1tdMI+jF3CuLWdGwPR5ezWu55vCNryn2XcmO
	cq+lsilOlNnFMWQH6gVvRFyCp36adLw8Y7rel4SmmONt/QYJEoRvNpvQa9xb4zgRNJD
	zKnT7H4rPiq5SJnU8RogN60viu/beF/+Faz628B4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805321af92-2d3d4ce1-47cb-44e9-9178-330b9ebca6d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 115519ab46cd89d00f839a60c59458c75d23d529c0d81c4546e0432b53500cfe
Date: Fri, 22 Apr 2022 21:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650662158
