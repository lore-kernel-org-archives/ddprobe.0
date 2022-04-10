Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07635EC5
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 06:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649573218;
	h=To:Subject:From:Message-Id:Date;
	bh=m5YO5+Cl/5xWN4xpZ5mJ6AQgl9UlLfr9R94CIFUuME8=;
	b=DYFSqs24OUtDyV68+sgk+4ejq2N68wLR/8WBNnW2XeSP8XW6yxWiJZauc3GwuWaC
	LDA0+EQ/nXH3kQ/avOtCWLdd4aU13JRYmlvIEWPFcNuhTHpIWNNfhs34hg8n1WWMW7d
	/gIieoz6lZ69Ok9ZDqQu7338K2dUTm9C6qRi+NhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649573218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5YO5+Cl/5xWN4xpZ5mJ6AQgl9UlLfr9R94CIFUuME8=;
	b=KX83r+lBtc4jtQUPJd/PK2JNZ/Q9EXZLcOx5fs126i5FyudB9w/GnecItZgTepdn
	X5Of6h5kdKm8Vkd97OkGC+zbnllMpootQmi9OlZZkP786jC/jZhhKVhIA/ujaWxtgd6
	b5SsMrVbTHiEgUAL04sqDsGuMubOm5RaYyeMFLfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801239c7bf-a92ba959-8b01-42ed-9b14-1fe089471d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 416e6d9ba39190be8a74665eed970c79a035bccce1adce638c57eda8253f38ab
Date: Sun, 10 Apr 2022 06:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649573218
