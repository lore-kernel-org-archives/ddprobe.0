Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539A67B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649690158;
	h=To:Subject:From:Message-Id:Date;
	bh=ii5KW5vDowA103R1nGIWC12mQPO2yGsCICAKbjuRsCA=;
	b=AT+p8Qzk2jYnBURdt9HXwJsUdFVNi7t8eHXrdFkLzUnNEIusDaBIk8tezMbEQvuZ
	iLMpYl/DJyG4wPlxc7RhVBCxoZ0VZRtXytzkZ5jkqQQ2h/+Uf68LgDGhFlrbSjjOcON
	PBYh1XkLDX2mjesXQALQPg3enmDYofpfQYLIkjMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649690158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ii5KW5vDowA103R1nGIWC12mQPO2yGsCICAKbjuRsCA=;
	b=UPHDaKzhr4QEPh+JDebUzKTrQYUCQQe8oJYiL5j1dPeFKPGXnDclIq5XJzLHTX96
	HGcamTxH9Ju0OudcvUUab+02dFm1cgqNuBGwhrppDNU9c6FdI5R1ofY/6zqGGFKH0lI
	/5YeAOO02Kv6FwXWedyY5/1v9OWmcKRQBsIF6GW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180193224a8-47508b8d-8e0d-4ed3-9531-42671a8117e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8012bfd7337ca0ec3bbe99c7ca450a6a3bedb99672af18646fb2fcc8666b1386
Date: Mon, 11 Apr 2022 15:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649690158
