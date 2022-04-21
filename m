Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFE046BD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650539758;
	h=To:Subject:From:Message-Id:Date;
	bh=LGCk6R4BdLU1yTFHQENQihpVZ88igMDTr5updn6LJtc=;
	b=kSpeIts11QkW+ie+xHFEIc2+fyuIvjV6N808vhug+gCkwfy+tLwfxwGYgMDatOaP
	x3jJA2p6hOxZAR9CyyFsySxpcfSZH+ZpnpGTIqfrCLG20xBgREW24AAbbgWzrhMJhty
	pLfDNSiT7OMvnIzEAKs84aor/je0u/VB6VM86+sI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650539758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LGCk6R4BdLU1yTFHQENQihpVZ88igMDTr5updn6LJtc=;
	b=gZ7vP9mmdD4FdFfER3Um38OdImsbLPWz2bQDpEXH9cbzM8tzaPh+7zRyxghf/rib
	Z9A7TR52d2txcRm+5gHLQOKMQ8UrxJBYjOiP5pEAHQG+/Sxkr2F5Jt83Ocz6J1yPe77
	fMFktC0KfDexWXXFJNBCA1q2oo54laI6j4qeYjwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804bd602c0-a123e1d3-21a2-4c32-b406-426fd8d62bb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1377ac25f0ed59eb880fb7c129e059a105263b0700a5617b8a4e5fee9dcbcc79
Date: Thu, 21 Apr 2022 11:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650539758
