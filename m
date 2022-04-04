Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1203B2917
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 11:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649072278;
	h=To:Subject:From:Message-Id:Date;
	bh=jZ+FgaB6pzmqFke5pS08uBi4jFfKdoekq/iYgctMYJI=;
	b=ciJtc2Sb7dIpM+GPQP61D6o4tg5pGHCR9KZUpjGTRJOUBjUIaIn/lK4aooAh8LgE
	Uh8q6lG+n785dvUjcqGMMGCbQGuppxPl4wXVTwtfWFUij/hk/HMZ6HC2FtS5CFuX6um
	OA6E61Ab1/WcSuy47Z3NMx7ihA4LrYZE6807ZCI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649072278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jZ+FgaB6pzmqFke5pS08uBi4jFfKdoekq/iYgctMYJI=;
	b=Gftp5jRclm3bINIYecFjUyHZz+mm6l3YGDxYgB9x+3nqq6bZrAg4nH7YnFAqx0Rk
	6sabPgMtsFCUkS6sNWChWBfuP5Vc0/b8QY78twwACL0leBt5ZRsuXjpB87XgiF3A6Wz
	o2KkdtAjOOU9B0pmry9kU9jOQO/JgkHPtkqnQUg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff45e0b48-88cc67c3-faad-4db3-86ba-0553b39fbfa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f96bba28a4659663ad48b6e9a460a5d24c14aaed5fdce41a517f00b446e58c8e
Date: Mon, 4 Apr 2022 11:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649072278
