Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BCC7E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651938298;
	h=To:Subject:From:Message-Id:Date;
	bh=qRbKX++quhZTlkSogxZ2tiu+yKI3/w904TX4QmF+qh8=;
	b=mXv1ek+WQEPSsdnsuUC4N5Agp2f1aTjH4BI+7iprk+ZtBjzw0O02CA7q/StIfvSr
	FKxx0aRN96XszPiivxpcDon6HjWZG0iAZlNDKns6VjBMjc/D+Y0LoHJP6dFFhD+YouT
	lLfUxaTc2Ml6XCOXVLBfPcR68Gp+g+zEMBuwW57E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651938298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qRbKX++quhZTlkSogxZ2tiu+yKI3/w904TX4QmF+qh8=;
	b=PgjxFzDEUQTcPpX17eVByvw7hIj/LP+slgARyyTT+EZHTD/EjwKYXBonS20/VUW8
	VUl4SogHEb/RR1J66UnTXtaIigUeFpvMAweYr7r+rYsuv5XjgTsAaEcnffKWKkCT9Sh
	Mc0kn8KNqN1+ER5PM3YnwCNBnpAKUeoXhDC6wMR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f3209d5-077c9ee6-8967-47ba-9798-b182ad3218fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7341aa89e08823e07a194501e0592cd209d43c2dae096aa011b80018a60687c2
Date: Sat, 7 May 2022 15:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651938298
