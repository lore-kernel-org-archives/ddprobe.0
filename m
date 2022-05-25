Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D777C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 18:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653504479;
	h=To:Subject:From:Message-Id:Date;
	bh=AoQjxppcFNz7OQTPdscHDlyLBbqldwdb0VCc2c40Bic=;
	b=EQiM1ZVP+nsf4IVSu7+Loq0QYdloEbo0uCCJn0U9OiepeWyrrGv0FS6rM5HijDrR
	pXRDhJBoG4GZ+ONl7geI7qyUvXSPwT+OCwief1BwutbsiQTmF1r8OtsoXbvJ8woUC0b
	AO2PhQsqnsq1XhXv1JgfvunY1I/q7H/L8C6uCqmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653504479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AoQjxppcFNz7OQTPdscHDlyLBbqldwdb0VCc2c40Bic=;
	b=Jd/w6UP91xzDQqUsIv1OyCBdltMz8rOeQh0amkYkKrR+OuiYY/E2gqoQKsswzy2H
	b15QJDMAJ8QZxsTs7XgHVGtrSAb4cJm7LR2j3MnfcFCidvyz6fErYvvDDkLq2uPGXqL
	t/Dn6ccUwz7sYb6P6CUWEKgmTDbDtAwhmTdhooJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc8c1006-b2fa282b-3fd7-41e9-8645-c5b789755cfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93c60550f6e7d138016cc0d384633daf5554bba3d47cb5fd6caf321ec79cdc7
Date: Wed, 25 May 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653504479
