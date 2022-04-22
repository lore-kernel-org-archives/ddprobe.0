Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DB228E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 19:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650654898;
	h=To:Subject:From:Message-Id:Date;
	bh=6s2WIl4R1NTOeCHpgPiSJxYo1igh3/sUF32CnB9wOeY=;
	b=bnvrYjR1i6qzg+AdX4zY3BvOpmalNTUtzS2kIGU0UzKkJ9yo51gdvLoM1jtkAGUF
	VEKYGd+Al7qt1grYkkesR8CVruvqJq4URR/VFi0i8xloJJbjJvPCgReJI8g/Y6Y4tDu
	SaO2wZPaP0yVoDvlxRAe+Y7ot4/l2kmf8eg7gztA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650654898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6s2WIl4R1NTOeCHpgPiSJxYo1igh3/sUF32CnB9wOeY=;
	b=OaRVuQzyQQq7LQIWaKgjEIQhhaFZR+Ieb3d+0IHt9p2Ud+PjNuBNJ5lZ9kl/4SBi
	z6gCiCGeERBtpewdg3QhbkFgrkSftgMI55PgOYdzty9SAp+C2p33lFGrc3DuEpap/Tq
	jnD5e5+qrKTRoSovgJEI3vy/o84czfvs0Nf03/n4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052b2e854-773c3c3a-8792-4846-8524-4c5e3429baf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a88bafe7cf42716a60712fa1c34ea654b6b0acdf54e139c8b87485632311c08
Date: Fri, 22 Apr 2022 19:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650654898
