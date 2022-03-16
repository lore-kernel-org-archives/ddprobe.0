Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD7638C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647438984;
	h=To:Subject:From:Message-Id:Date;
	bh=MVtMPPhAUpXKIKV/TSyyBaG5dCaaG5+zRPaHGQhYh34=;
	b=cLgN+SGQ9i+8a6X2kljtU+6AlJlykPrkq1Lsj/XoFUBKk8m2aAfkzxUAFXbQXrVd
	qiTE7MhZ5CzhNzLNSVoLi55Qs0snalpZSk1H1T6VhH0PJKgd7OqnhbUBEuTngY4SWdT
	0e11NWZr8moy+TNtKGlKiwfSaz5BOjA7mKeRIAz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647438984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MVtMPPhAUpXKIKV/TSyyBaG5dCaaG5+zRPaHGQhYh34=;
	b=SxSFRTTBdKjNTKLn8C6LFXBPWYJROKyssdaEzhoIo6zdD2X4FeBJZK1RicT+4TS4
	JRQkvmi0/Ahg/QHzNAVxgTRk3M5yNuHudUWip3qKjmiR5gqhxDQDVCyNV1LohkoYD/J
	W6iAldPstm0dRVH0Mx5wU7S5aQXZ/pbDgiU9Srmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9303f62b-3c7f351d-5d08-43d2-9938-6959b040b5cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edc1303d96bf701e60913d62ebad256da66ed7fa5be49c53ef5b32fbf7fa98b9
Date: Wed, 16 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647438984
