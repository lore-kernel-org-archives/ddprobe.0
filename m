Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E817D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653048779;
	h=To:Subject:From:Message-Id:Date;
	bh=IHyjyre2C9H4BOMc363TPFDbTRX58rAUAYe27ZNJZac=;
	b=UgVnmmLRirAgIeE3ItV4RcGcZg7XphcgbSK4BIwasrfzW6dsOZp5X656LS2NWTsi
	MJpfJWMqs0msbQ0HNyaxpft8uEfn+hv0X5o1C1fLlWvplaG2F9+Iq8vEYPzvPTpjiki
	kMy2yYravPv/wyDRD3OtSLQjkkg5rTMFK0SuNL9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653048779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IHyjyre2C9H4BOMc363TPFDbTRX58rAUAYe27ZNJZac=;
	b=dStAKN7Ic+m0AZTCId6+2nyRMvKaAyLcKeeCav6cg9MPpNGdQBFZhSjoIuW9jE3L
	cSURwQqzqFYoHqSUDJPHOiWhXwhJX48GInNJ2zvK2GXHBj+kSy9+6M4jsbwd4yN8UAX
	zzKI+0LBm89o15bmMBQyDw6ZSLqthZuYh0leRgAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e162a22a-8107d0df-f455-43b7-aead-61c28c16c013-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5723984fb83fa732b04777eeb2c8a3f146d165f37d9cc37c82889807658d551
Date: Fri, 20 May 2022 12:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653048779
