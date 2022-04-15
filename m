Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D7A7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 00:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649984098;
	h=To:Subject:From:Message-Id:Date;
	bh=RbKPbpoyMaD+nZZzScj97Fh8QqJkViSrJ6LOCe5szOk=;
	b=eNS6HYXTItim4SptFwoKjYwtzWJJwoEeZ8pH248waUoNxhspg/lVjbi1/kQybyu4
	49V29dTey+86bOPhMHM0rmdaD0p+oZjlkR+oZaO20TAv/hqjtg0Nyw8SgeiIvCKhoGK
	Wk20bQ8UKPTxsCjlKRPH9Tr1rAqPOwkZFBPOptnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649984098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RbKPbpoyMaD+nZZzScj97Fh8QqJkViSrJ6LOCe5szOk=;
	b=YjBSnRpwaLU/v9RuSGuErjGPjCTGqZeDpMunV/HZdFL/+eNfvP9gh/LbYuXjbMTl
	cQfkfqQ5CiGuAz3dCjeD2gHGtMZGfud1F89hQYvmZUKf5wMUXlxWRFIZ8HHewu79Kij
	UDY4hiXrdyrZEm7zlPPuoV78d6wKlg9vnYsBDvP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ab74faf-b061b0d1-90d4-49bc-bf0d-fb7aa94f8434-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b63f37e45ea5e259ae330e84d794003eecc3c50ec018e5483ac99ae7aeef6bb
Date: Fri, 15 Apr 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649984098
