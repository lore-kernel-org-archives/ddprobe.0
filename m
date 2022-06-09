Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57A210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 09:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654767359;
	h=To:Subject:From:Message-Id:Date;
	bh=1ugwXJryGThIN9jFGvoWOxqDZywrhYTmdK4R/+Ac2Zk=;
	b=Ydq+NWeQDC+C3CgLjIXaa9C3+9nbNpAnzrKNoFNXkcqhReMDJPMtZuHWfW9v2HHA
	IlWljlwRB+ru+70qh4VpaFVhYM9cyHtB9rhT5fWiGKfyohDm9KGKhEhnJRyKViYOe//
	jMdlPdEX35TozRS5bOR4MUY/+BDNsiwO3HkRU7zE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654767359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ugwXJryGThIN9jFGvoWOxqDZywrhYTmdK4R/+Ac2Zk=;
	b=URZhYiAoGMfyMaVK0KrrABGftXo4vNbss8ihOiVzzBc/qMEiU5AktobQY3ql8d2M
	ar4UkDsHGVoEl7wpm/5EAslg3ifcD9yJG6KipoVQsULHac4X+PiaEA+0AL5DzdpZBh2
	XCizeN7CnQFXk8g9na9QB1md5fWJZTSawtx5x8SY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147d2152d-6cb57e86-db82-4c9b-a9c4-80b62bdfc64a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2963d5e28045902460ca2c3a130cf2fb441f8b79a2f66cac948c167c2ad9ea02
Date: Thu, 9 Jun 2022 09:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654767359
