Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A5E1389
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 20:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649621518;
	h=To:Subject:From:Message-Id:Date;
	bh=kObJBAU2+XHoPsfIriqzhxvcf0T46B6njkBFdsnglHk=;
	b=UdR6d/tMtJI8ogmUFkadmPk4Lg3AHqfaEYlohtHkiRfl9/ZuWArzRecIqyP51EJj
	YS8n1GVAP1oOVUAc8HBzoID+kAa3ESELuSXMXjfoa36FplZzg5Dg2aLnfEbeMZfQA3X
	CsRdW3Fb4g9OrLAPiqdet+wYiQ5s1u24zIqXPMA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649621518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kObJBAU2+XHoPsfIriqzhxvcf0T46B6njkBFdsnglHk=;
	b=CGemQqD3AHDPGrU5fWcRbXdGpvtpkVDFQ9vFXgcCoaaUy1d84duosBzLl+Vhb/u9
	4rok319T/UXoeJf6eIMvbn9Hi9IGj9cTd9p4FV281koH2YKtm77w4pHdylZbY6Kn3Gy
	6AF9viMueDTR4UguYQa4CcthNlQoDTBqzEQsh760=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180151ac789-59cf7621-919b-4aad-ae06-808d4a70ea06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5482060d89ae737ab513873e654b6c7c74abfd1f160f57ee4dcb2ec1bfb54df6
Date: Sun, 10 Apr 2022 20:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649621518
