Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94C3C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657541212;
	h=To:Subject:From:Message-Id:Date;
	bh=A2cjTDTTxeCpZjaahsvvYTkTGi4eS8PHY/Dv7QFFDdI=;
	b=UHqijIyt6rhir7IkEWCAQewfUC9p7rsvqlwFvpAN/VRFkTsK0/qhHXmUZZXq5SFh
	6iy8Ia3c2SKTaWl93usHhNfFevQSt+/T7kHgzqWknO8MV712ie7wFyQemqaxeFVY7B4
	v+TxxrcCSv5PRr0wW58v5X5dmxk4MidD6LbqxuzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657541212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A2cjTDTTxeCpZjaahsvvYTkTGi4eS8PHY/Dv7QFFDdI=;
	b=GTv6pDPOELfEwpqv4oaTtMcqvurPndH9iGD7jNlutx3kKlk/QIK28qRKG84ql2gx
	ywmlD1rhCr3IlYZIPW+5WuAuI8dF3NZAsC3mJMpr6jSBjvmnsnkRy2Ec6FdFTC1cynM
	go90xBx8BCOkHsXjO9Ht75vtSDHPjFX3Ax53lYk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed27b8ba-7956ad3c-e822-4c5a-93b6-0baace82eba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f55c10f20d5367cb7a2bdebc8a31f4c22274aad4f7b410fe381cd21293750a0
Date: Mon, 11 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657541212
