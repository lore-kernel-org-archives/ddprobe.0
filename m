Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DE4257F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654471319;
	h=To:Subject:From:Message-Id:Date;
	bh=Pb2cG1bYoYnI2tV7LEOhUWfHLXIWPFLX8N3/qporCcQ=;
	b=DXv4V9zkGtMnvD76c+xoH487sctM190nkFa6AWYzhiIVN+GhLUw67hg+X8nMclxr
	TAt9bcnZBE2AcV5WCnxsWumNQFTQKyTn16xDiT7NgDjwFn+jvFL97auTZ5TgMgYHARf
	GEMtsDKiPlkSm5JWAoWi7WIOjC4OQuM8C5hUpq94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654471319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pb2cG1bYoYnI2tV7LEOhUWfHLXIWPFLX8N3/qporCcQ=;
	b=iCrIGNYEcZA2uzsygYwgb5bx862RdtZCLpfsOD6XaDkVh08TMHEpIhjev1gt5Zmd
	0Ct2IbJmEhsyQBphGhKJKtcaXkH8HhJjGQt7A78KtUXPT81P5YNZtoWZsldAUl+Om4K
	BR4sQUsb8vqMjCtX6u3ZnLJKCI6nHqyboHdIuceA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181362cdedc-18a7fd2b-2ce1-4e0c-94e2-3f8828e2f611-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1c07096df43e4174c2f210478260a8f72081da5efe51d64965d067c29906acc
Date: Sun, 5 Jun 2022 23:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654471319
