Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF62F4E
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 22:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652222879;
	h=To:Subject:From:Message-Id:Date;
	bh=ol9DR/NfIBVadeUdpesyU3ltto8jJFbFn+8T0ZA8phk=;
	b=WYAD80yCCPGMOpKwDG9xq0REsnNvdBwuaPjoDbTxvmFM0rviPzNUivYWOndncNlx
	SFFz8F1/Z9bQWnm9RW6Qb/YOfa33y4jW1A2ZRe/iB7aFbZ7AfzdlNmzhz6Rkoj1bpKw
	652SbqqJXPG9LPN09MHMRPgu2xEbmoai983qj4eI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652222879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ol9DR/NfIBVadeUdpesyU3ltto8jJFbFn+8T0ZA8phk=;
	b=R+9tMTSfaXUvX1KEXsDUPzmFtQDp/wupuF+dbIZAY4QjAecYirqa/ZDLf7mBtqiV
	lYAMq17SRZIzFpUQW0H0e47dDDijrhIeRKoODpfKfcIiLcKUL0+r4rxCfHF215Dj9Lw
	fZvvTeTj8iOQ5WKzN6ZvKXFj7ksTsVazzaX6ywMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b02866d3-b1b6aaed-b3ff-4a47-b16b-7c9810f6511f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4aba77a9066e05f75ba281f08d8b8a0cfd734bf566fc8cc2c28ff83bd0d9969
Date: Tue, 10 May 2022 22:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652222879
