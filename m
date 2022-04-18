Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF3BA41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 18:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650307618;
	h=To:Subject:From:Message-Id:Date;
	bh=/JLtGNqxwpuvqbQzZkAXBpzGpDeEwA7wt/bT833DY3E=;
	b=bj9fZ+ii5TwycxSIh4wds3qkSRe26M55WwBLcY8yrt4G3z+brre/MarPsenu0CW5
	sz/uHTrdeiWgOaP/+fm81DWc9r4HAtyrK2FYzSk3prJS1UguA6sdY8yHdtAMMTMSfMs
	w0L+kgyGWJGB2lH73Do72E9BO9B4Qe0tx8zoFE+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650307618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/JLtGNqxwpuvqbQzZkAXBpzGpDeEwA7wt/bT833DY3E=;
	b=IXz2XWIR41KSzpsGoAwNfWv6pJ6g/E641ezXZ2nyvDWbr4iIHKLAssnQldUYJj59
	fVQzfb5QTzbPOMa/KSlNqWU/b/4Im0+5SOWgtPDlq4nAZDd9qxzaM7nPlYE3fNi1MjE
	xJ8ujwybswNer/y5p+DLlauO22HjVxoJtH/ytaD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803dffd5ee-db97b5ec-1509-4dd5-a85c-076ffa2bc0a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7008b50508205fb40189162137da455c8ec3937697c2ba9c499db8bffd444f0b
Date: Mon, 18 Apr 2022 18:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650307618
