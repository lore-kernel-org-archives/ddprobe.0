Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E668636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 11:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654859699;
	h=To:Subject:From:Message-Id:Date;
	bh=HphtIDr5f4RPTJRWgQyij2LIMssCF590S5t07nux/XA=;
	b=gW3oBZjBNu3dPtiHStqwlozYWtLgV4JciU7LVSfor/E/97o/QnlFaeae16apYQob
	GP9xUdIp//2F623GAB3mMtN6cufJ15BYeWBuWTROGLVOh+WhKGpmUJjGYlJXXBoHgFE
	pMhhRh1rxlBQJUYaRf5+Rkq6BAcbFbwsxQ/bRGkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654859699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HphtIDr5f4RPTJRWgQyij2LIMssCF590S5t07nux/XA=;
	b=ATxEOcnsw56Kq3SoFPBBKm8CP+ixLNMxRfPZG7n9RistaNCEVALHbWYn6DE8XO28
	B7TCi9yxnRd8dymEwwnueiocDmn1FxNoZ1iVQCJCMCmT5iaO2FQ6BkFQDm7tHOl6e2T
	W1NtA3CHoEz+B6zsj8ui1rujb40wrJyUKaZ3oMSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d53142f-ef222747-a255-4739-a49c-49adb3b9072c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 597285caee7048eb1d4628b7c151c531af961c3a8087f140ac921f115036b3cf
Date: Fri, 10 Jun 2022 11:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654859699
