Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC5E7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655720399;
	h=To:Subject:From:Message-Id:Date;
	bh=ZM3VUz6RJF/vt8s5RdxK9L00i91332ezb9WwpJjXWaE=;
	b=Kv/wDdbfe5bH8uogfYYdOOMdaeysWQnxSklTCwXdZatACD8IQXMtzNJAthJwbTzX
	vEb1a1uzJUiaKuNKwwX2Ra+xS0edP8o65brDUKiN6GKNQG6WMYTTyCzF2oJnL7ApB6i
	yzksNOTX3ngfJaoCIm/xK1qs/TORkEhyd3TccwrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655720399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZM3VUz6RJF/vt8s5RdxK9L00i91332ezb9WwpJjXWaE=;
	b=e6wkVVCGts1mdrivR0POtDsJuh8cXI65JpujnkDuaJ+B0WMB85gOOuYo8Wt3OEo7
	Mn5p4wBrXB+4bCodkqG0o+eiFQ4Yp52qV4p6N2lm/ZtP8NV+dqgeZXXg7+plZVYf/r0
	ny3yoJf2AQVCoLrqxldElwTgGiVzxlo7qzMUM8nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180a051b6-9030402f-c09d-4dc4-b32b-9773f1bbd5da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dd779d6aa9f2e0a082cdfd85bbe7332b3254029054f59ae13204391ff7449fd
Date: Mon, 20 Jun 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655720398
