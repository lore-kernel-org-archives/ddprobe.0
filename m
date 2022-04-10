Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFF6ED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 10:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649586238;
	h=To:Subject:From:Message-Id:Date;
	bh=s/Bn5NnKw8lHPeUshfbQlIzvgVlNqn6U0fnBgIHfBm8=;
	b=VN/ny97SpZRS17mq0qr2/SHxAFfBENYgjibZI8t5hjzA+Zsd236EWoDhOq5GoFwo
	dRHnkaWd+BBvwcXF2aRLrBrk9C2XFfxZlnt3Eggvn6mcqRTlUyUx27Wd3MwqVpuPD2L
	2zxQ6C0Id+UDSrI/afQY+kGyL0YfdqlC1Pwb/ziw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649586238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s/Bn5NnKw8lHPeUshfbQlIzvgVlNqn6U0fnBgIHfBm8=;
	b=Shd5HijaDFuVQmtSGbv/eENfXrw6kUpl5KnI8n1FXswH+HiQbgUatK54gCYfqifM
	GDSbnkOm9S6tLwfkZ49FXNijTuZ3THpJixWZiPu16EVQwHz7GgWJghJ8MY1yadn+nYK
	n5OiZ9J7XAtUJAKrxFfEY160vHOMelAVSlKq3yms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013007360-0203e08c-9d59-4c7e-935f-92e155a2ea75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24617c69896fa608303db2f02e7b81d8a12176661beb57f13bd5d6b4ee573360
Date: Sun, 10 Apr 2022 10:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649586238
