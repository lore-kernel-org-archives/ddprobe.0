Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CCA66A2
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647990384;
	h=To:Subject:From:Message-Id:Date;
	bh=ZY55fDI1YJU+1pUOxLHpODqjHQYEMZX43BhvDFvlICA=;
	b=e1jMAOxG4nSJ/ncG/2sGq5a28+qXvBM/Bq8D6npDnzylXLIb4+uL2xahjyOhWL2G
	XUmxCJ0qNK7UEBlHYIsQchMv3B6MWAXQOWPPw1P1Fg0ubxY5vzI149aAPUg2qu6mdpy
	MBVVJGr+9AWEQVh0yKA2hD+Opr6OpoT7xGut2P/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647990384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZY55fDI1YJU+1pUOxLHpODqjHQYEMZX43BhvDFvlICA=;
	b=YaKPsVH1FRBzwy0jGE7VSaZpXYWmPKGjvTiu4hRbpXeIrh/jXhHItcuAtye0KJJ1
	yPYJ9NZbKacSMDteL4nauLazx9dZoM72IlKSDyzhIi6w0svy/0RFGxNUmW4XsoAUTK9
	PvIUk5fLrr3TGNOHD0mATNRRatENdTTNwEhNFAEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3e1a866-3e1ec40e-a03c-4a37-a23c-c64b57b9ce51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f73379521613fe326bbf30ea8ae08f84d8690ba87d0bd655f657f1e124b2ffd
Date: Tue, 22 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647990384
