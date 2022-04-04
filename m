Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CC82F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 13:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649079598;
	h=To:Subject:From:Message-Id:Date;
	bh=8p/7ToFpmPdIfs6G9ODiQHF779dl1+5oAXbEhGO+BDE=;
	b=Yow9ijp2EYLPF4WyhIU4j8xCPpEoPZohOQ3xQHPcvFabrKsHdFB2NN+buYlnb/fg
	NZpm1JfhlXVul9xPD8TjC8ToArfnQFAUIpD4MurYaj5agHvPkp6qZQ3tj3tHEOpiDs+
	7nmEzr9YNgRm+4o+qKaG7bkliVLNK9j8xqQKfKu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649079598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8p/7ToFpmPdIfs6G9ODiQHF779dl1+5oAXbEhGO+BDE=;
	b=J/PJogsmytmGHQ8IA6kAiBl9o4/Lu5JRQmsnlHwYGrLTQndcxVmamtaLGhOcH3sT
	9b1VLaubJifrWJHg0cLK+HdS7GwdiIVF41jd6QE3j3dQfBkss39d2+KK2y1DY8ar4Vy
	VJ8X3ytY+WhD8+0IZspkndN327jDxaQxqgSnGfJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4cdbcbd-6e9a8c19-9e31-421a-be0a-b247f36bac0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cfa911b82f8aa67b31ebfeb334eb2bd4e9e478440e8003726868fa4944e6c87
Date: Mon, 4 Apr 2022 13:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649079598
