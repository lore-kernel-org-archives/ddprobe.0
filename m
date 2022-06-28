Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA3C257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656419212;
	h=To:Subject:From:Message-Id:Date;
	bh=Cm1tzzG/WdJ0MRuNLFpgPfYbAV5AC9lq5kZiInxqEwE=;
	b=E2vrH+peeF58s9zmzONYhbJU2/qegu+w/L7MCa8fKgHcddKb06NVrycIZpRHVSCh
	ASBqZIFzuwo6dEikURZ7tx7+wPPOzgFG+EhRkqTiGU3t/Pr9trIWi3lLDS5QWRlOKgM
	mWvr22pd4yME3CvVcNXbCDdH4Zx/iCObjoYHM4cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656419212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cm1tzzG/WdJ0MRuNLFpgPfYbAV5AC9lq5kZiInxqEwE=;
	b=eVvMbLTowZQ0J6zsJd1M66t112PsuyDm/kX0ECdVMnW9M4vBD8Gdprr/0Mc9LMrQ
	E3wktBfvPs9sVxXIo7jqwk9djUAD0L7FCEwwYFNZ9E9mingHI2GqJ7bcem4p/JxlHal
	JMzdvqCJcBW655B9B6nVlcV5ghvJTdsA/N6SVaZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa475be4-2895a5de-c51b-4c9d-998f-6136a9a56df5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b27ee31b3496c468d331164b07f81b3b818a1fc63c2ab3a7f6bc8e87838c8c8
Date: Tue, 28 Jun 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656419212
