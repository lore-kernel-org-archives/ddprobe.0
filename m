Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAE77E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 06:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652076478;
	h=To:Subject:From:Message-Id:Date;
	bh=2Jqm7fW3ZPz3vnAk3rYtR94E4iFwKA1rfaOHiZSsEZA=;
	b=ZxrN+MVgqAWdNYYUeALUhaZhn64za9GVFiR5HBlAufVXq718S6XQFPsHssNhy3ms
	eAgVaPCoJpaor7e5UjYUhLmvifMFtyldoESWbj/ZeXfjMmQGcVunW2ITLlcB08IM2HG
	/wfx1iqb/EDpdt/kUAJiv+jpAmzeMMFTxU2fkZ7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652076478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Jqm7fW3ZPz3vnAk3rYtR94E4iFwKA1rfaOHiZSsEZA=;
	b=QSeT1yxAl1CKUzgR+NKJGlX8hc6PthR6JECMbKTqxJpIng4bKB3js9hXbRH8P6j3
	4hbEKVognVhFRB08ZUH07Nl7PAewhzTbXitezklYFRTpcpeXJzw4OwwcaphdhpZSjVH
	FhJRBzwwfFXDEW2DGILPSH+eeFs+nfQYWJlYnpMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a76e7f51-18d34726-8769-4f2a-b126-32cdb76684d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78740bf07af1d7a7e9ba9a4d858cbb86b86dba39dfef4af1b31fc3101fc9ca78
Date: Mon, 9 May 2022 06:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652076478
