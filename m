Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D57F17F8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653902399;
	h=To:Subject:From:Message-Id:Date;
	bh=Aevo26MfOgQTfZmSh9NttTUnFAaLy06zmtakZ2IeFP4=;
	b=KkVTyV45szJLLRlPQk8Jp/UEC88jTwKkTflpMGsDJoxtZqsOHfHtmJ91z8W6f72K
	PiyRy8lJsg7mueCajz0dInWcKsn9ekBHlN9yQij7voBVmsxWgJkDZH5D9ux59Ea2lkh
	zGCiv08tknixunKp5GZzrGaLVtmYyVBstu48+RVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653902399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aevo26MfOgQTfZmSh9NttTUnFAaLy06zmtakZ2IeFP4=;
	b=af499KzBhAtXNyJUo2KCHYJLrx8zQU5E/eZPOaU3v+vdmLj+m359p/hzrFMgj49d
	N7a6sFod1KScK5gUlkhlnI8xS1wF01K4HOEz8W/CBN0nv4OaIvHe1OI29yKxyMVdd1h
	pRdhKw1dHoAfyVbRpRHgQWjsmLcM7vfaZ9DU+dyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811443d73a-005ddc2c-c09a-4768-8f9f-fa248d65ad22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49b0eef3be62c5d04888865e7f9d857cd62e42324bfca24d19375963b7c4ab15
Date: Mon, 30 May 2022 09:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653902399
