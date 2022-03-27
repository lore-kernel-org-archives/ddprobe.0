Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E2617C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 09:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648372558;
	h=To:Subject:From:Message-Id:Date;
	bh=tKiinBMCVI1YenH4osaJ6Z1jgrSBACnx6gQEg6ABHMo=;
	b=SVP/EF2rp/4ywzJTnySAecJdEUX2nDOHiu7ecDNsTwojjIqL0neoTSkTsmSELrkD
	dhn7+RID2WNvKfJ9zX6Vo3r1KqypylyqdDVMRqbw7pPj2800CIRtea8zXkNgIfWeh4M
	sybV4oJm25FnEctK8XwWwEXVviItNMVrCZ17u8MM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648372558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tKiinBMCVI1YenH4osaJ6Z1jgrSBACnx6gQEg6ABHMo=;
	b=cjgoO6s3t3CNL0k/ge9HF/02ql70oXVIx+kn1HV0q+GtTXseraWzxUXDC6fZxGyj
	/PscSuNZddbIpIogziOgdpg9VbjvN/ocJtTPnfG9ruT0lQzwQ067lnfEyfQ+oQtYkLF
	4uV0Row4b0KllfcJfiWxAhduiZfpsPK9uLA1Dm5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcaa929b2-9da46663-5db3-468f-a41a-06ffd55bef31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceea408523b3cf56a29199160e659b2711712a51b4a0bb508f059b1685495f3f
Date: Sun, 27 Mar 2022 09:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648372558
