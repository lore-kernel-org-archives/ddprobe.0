Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6879A7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648739458;
	h=To:Subject:From:Message-Id:Date;
	bh=4yVsSyefDO/6Dc0P98zP4kqApUDh3Ew8sCHqmnO8dkw=;
	b=CS8KwB/R56BKUGnHoyRdH360+2ZNcT5PPh1OSG8SMHMem52vWLS9pYRUW5Y3OcuG
	txO317b4IU9vogq+OgtM2Ef7jRz8VJ5MpkJmNyeiLqpzhtULzZ9AqSIJuAXr55l+hIU
	blwfJDaRW4Gl+tLyA/mpO1d1AJyKEvxfGU7X1DA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648739458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4yVsSyefDO/6Dc0P98zP4kqApUDh3Ew8sCHqmnO8dkw=;
	b=k8IuLqCOpDFic/2Sz2vpmYYYUXnx/1ggXQa+svLyHbFjCHcqyX0iWyWLs61ecHwq
	K6UpNkX5oyx9ZqHdyX0FD8UNbQ2EVkcUaxUswXusiFmvV/oJE4LzbAFebw56vMfgfJe
	U8tQDUxRRGqE+RuOj6Wcq3sT6jTEB+CdfVqOkplc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe0879ccf-8555e27f-37ea-4597-a60e-f6c927c85170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9557890a132daba787347efe77f3cee7e8e172c866ddc8e298b5b1d3dbc187c
Date: Thu, 31 Mar 2022 15:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648739458
