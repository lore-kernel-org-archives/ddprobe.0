Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4123E7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 15:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648741978;
	h=To:Subject:From:Message-Id:Date;
	bh=OPMDBxuIijkmyCcpLQg0z7sRerK5fSlvZRuJnN+aVWE=;
	b=FdbeaO1FO6Loy0Eg/rowL3yysN9PIDoGT0BpblwsJmHd5xh+j+i4U5GqaonlW9y0
	BtS708uYmQum8Z6wMuM+V2g3uD+YJ7uYqNMMbV43pI46BoqlyaqmIVXxwDT+f9n1PVQ
	1Cspn4qR498wz7d5RZGdeuUaMvHhDxigTA7YLyVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648741978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OPMDBxuIijkmyCcpLQg0z7sRerK5fSlvZRuJnN+aVWE=;
	b=QTZAyfpUl6bBMIITi4PZiMc4j32WwF7bog0zM17ghHP3t5+u0xTpbn4FO6SIRL8G
	Tnc3OnPIuH9j0AhQBCc1gQNLvLLuQdOhisaPw91hOyTquaEG/4BCZg8hlJAseMaO16X
	q0qcxrRULaOlFdihzflS8q3aSVnEqCi0UzcynCqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe0ae1088-ec6a6aa1-9579-4d3e-803c-6a16f4b79262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92247dbd52cabce9c93fdb26fc6fd0206d001f7f0a73abf84babc1ff9ea9347a
Date: Thu, 31 Mar 2022 15:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648741978
