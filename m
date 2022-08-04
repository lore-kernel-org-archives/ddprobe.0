Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F9E5387
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659643253;
	h=To:Subject:From:Message-Id:Date;
	bh=9rJaBSFSfqywuJcnG2LSoFife7D//0kntnTE5KR7MrU=;
	b=jfcvu1xdsMoD7m30YjfElHp3NOKjdeV9++no5bsxkqA7VVIW7C42bAY9/NHlQ8JF
	X7Kq/25l0wznrwpeGNJ1rJIqAMLf9okNha3nUkVLELpTg0+miwz7uOunzmfZgCjfZ1f
	6C7hlT7jjye7Q38pmbMsk5FUFLM+dwWS/jEjPEYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659643253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9rJaBSFSfqywuJcnG2LSoFife7D//0kntnTE5KR7MrU=;
	b=H7061/9yG1jeteeg3gkb/3MwSISueiABDuuBf4okNSTlvgphZbvh1ISRo6gYf2h0
	HVh86t8DRqrhLqV68gxEy46aLXlIRS6LM3K05pnAjHavX9iOyobaQ8fthu4lehkF+JF
	Uogqh9DM9bCH0a9DSbYGqjO8fF7pI199a7W8udgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a724f5f-6cb0ffe0-269e-4b18-ad57-83fb5bb0ac7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 440a3e3de63c3e55a059c1ffe3cc1c71c1795438b7321bfe99d6725905793fb3
Date: Thu, 4 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659643252
