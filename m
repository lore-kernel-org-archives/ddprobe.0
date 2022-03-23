Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5582A40
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648010185;
	h=To:Subject:From:Message-Id:Date;
	bh=4yP+g/F3F3Pcn2zV5Qh7C54lDgm5PpklR03zhYfC9PA=;
	b=VjjeV1CflDZpJUZuuMGMeY5CJJKvgPSA3C/8mHGjwQi4psYSLa7HLnMCQbChFdDy
	kl2b/sNkt1S0VhP34zKsDoh3uEyw9ipAEyVfixoMLV3LAvzmivdpxoOZ4Edt+AI2jN3
	+WF7oeYNescmHI2BM8Iwb/HdutpkBbr11ejsAe2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648010185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4yP+g/F3F3Pcn2zV5Qh7C54lDgm5PpklR03zhYfC9PA=;
	b=CFGHjpUOtaQlwZa1+y3/Y7/jD/esUDW2P3psGCPSOn6Ox75NWRZBHIsrdjJ4PQxR
	Mg9jGOpJvBBJnlquXrQPU3v/C8V1Pj8xOF/pOsjdCPlA7eH16T6+emN+uplUqlCJp4o
	la8ABNjz6LUSIqyB1C84hrmFo9TqU3R2o/GncSOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb50fc85b-8c20b384-8208-4aa5-a60e-788910c8c9fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0df6df123aa39af7c4acce554b12183a9fea9f67fadc3d89454a604c8417549f
Date: Wed, 23 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648010184
