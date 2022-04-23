Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7827C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 14:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650723838;
	h=To:Subject:From:Message-Id:Date;
	bh=TV/UHd2BfdQQQ6fCm5+u2PlrrAF8nNPdRphZAVPs2fQ=;
	b=KZq78pS78umxe5MkKwOlNJK1NGdQDXbS1msAmnrqC7Dl5ARFHpPms7XROKt1W1pG
	o5u5omF0eiBoHzOwc9y3Hrlr9Fzcvw3PiUW8KppOMn2Kck+9jnvQx1ehGIF7Fv8YhA4
	chzOG3oFnsFRyT2KiHpzHx6ebvGfAMPMrEBYLLgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650723838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TV/UHd2BfdQQQ6fCm5+u2PlrrAF8nNPdRphZAVPs2fQ=;
	b=NSdULNEEn1go/IsvGoaOGEAm1NzMmGmJD1JR8NKo4bbgozr0+Lu3sUYV+C97eJuK
	qTOsZudT50OZ2DFpFx2tblriQxTjrRkuRex3pbkTSr8LrJhU4oF52fddgyRr8qr/yhN
	psFwW1buySX92oAHpmByCqXmz99ggLTjDHrrEXF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056ced967-e34ca70b-d400-4513-b863-65c738d1e283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed19667bcb6eac3ea13392384e0197c17f3314856fcc08e7468f3a99ef6ba38d
Date: Sat, 23 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650723838
