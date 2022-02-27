Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748152F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645951284;
	h=To:Subject:From:Message-Id:Date;
	bh=C0A5EMu1Xcd23Zzx8HyA36NlKpI+8p531+z2w8mOtYY=;
	b=ODdrE9oGXC8sUmLAb6IicE3+yRvxNecwWbSpYkiN4wLQ1kI8F04gd2QsXQLQra0x
	iao/hLY/p787J+VjtubyjEFkIRzi9xDcdP5A0/QGnA5kRHlVjCuSh0rJrmCPmum9HCD
	WTTxwvbt9R7QE2ZFTSnRYFS4TK3vgLSE81q6wyMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645951284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0A5EMu1Xcd23Zzx8HyA36NlKpI+8p531+z2w8mOtYY=;
	b=Li/zz0mdYy3lzjm8zYScllIGS6eUc4XBC8SykNPRUeZrmFxuyRuEwgf8R82le/2W
	7zY0TPBSWkFIur6KFhZEErsxhrsyUZJi1iVDtO7hyrJsRwdhiKx/fYgc+svFLA+0i9t
	0TTmTfD8YkIloHb9HC6uEnEgoyhLPVpOOAxrcdZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a57763d-55281657-b2a7-492b-80ae-451f326f2e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9d6e4550a3ea3804ce0dbd986b9b82b577fb3dde7fdfdb5647c24cf837cab3a
Date: Sun, 27 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645951284
