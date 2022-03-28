Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129027C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 02:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648435678;
	h=To:Subject:From:Message-Id:Date;
	bh=mR3lSstIzIMuYAqoGf83A0E3kNWYiPhID4QIIlKKZJo=;
	b=Oe03slFxMnWd7ffH75extXmVSRrhaQ41wgET3g7kVCsGIjG7/fRTbpDmvsTxY64G
	pPUH9rRGwuqt8YJH7zpgQJjhBNXoPgJ+k5eGJls36kfu4439b13tGgdYVEIZiO5E35Q
	cEn9hYt1N2jIeVR5N71dLmpt9oaEtpXfaoqz1sNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648435678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mR3lSstIzIMuYAqoGf83A0E3kNWYiPhID4QIIlKKZJo=;
	b=K9WQUHFxJ9i7AhpsrXpF1OUK68w800eAi5L3lR8IhbCzgl+EPoF6GqgiX7/zhRAr
	oxD0Fk7/bLaQ2CqPcG5s7+77GMB966/0Mwzzr/ALxtPhUIwwfoO0N0G+8PM7E6pfebg
	XtfOGepjq+N/uslm3U/JVdhkjBNyV9/qLbihv1F0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce6c4c62-13b90c14-896b-4434-9920-a442e774f251-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd774c198137e13f85391fd3763d4b72bf4ee59265a4ad64111a4d876cbe3ab5
Date: Mon, 28 Mar 2022 02:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648435678
