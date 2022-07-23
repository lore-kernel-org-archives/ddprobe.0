Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8147E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658558212;
	h=To:Subject:From:Message-Id:Date;
	bh=s+uYeApJE4nzdfinxCFrdatKM/L+bZzBh4/tI/yPuBM=;
	b=FfXJywZ/hu9rXkn/o6NauLN2h3Ol0eQuZaQDN6b+zFNbDLSVbcyEgoY+AVfa+bHG
	YdSOzkbEbd1gRpTHiI6/KZZwBTaCSVEJrI104JttSf3HTnDptex/2qPwgHsZYZaZsRK
	lFb/PbnpKs47sF3kXkCAs30fsZ1Ek/r+ZQLFYGTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658558212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+uYeApJE4nzdfinxCFrdatKM/L+bZzBh4/tI/yPuBM=;
	b=NDAm9bEGM7hQGJxAJotOE97aq+N1ElCNYiJFKMn9jRbBtfx2a2WI0MDki4EdWrwb
	w9Q0VXm6tfGaxvkhUotEpDBXONrQxmt7/GBIEwNw1cNezR+aXX/JsMHSkzqpc53qqAA
	BCruKGavkKLf6pmr9TZ4AlCOvd0MaSe9fCd2DMu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229c5e8bd-4add5c28-ff65-401c-a01e-421369967ce3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21ec725e1fc4ff675612bb25d651a8b9e370622d616c3670b2efa0764b80c7f4
Date: Sat, 23 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658558212
