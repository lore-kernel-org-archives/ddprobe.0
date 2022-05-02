Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3CA15A3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 04:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651464718;
	h=To:Subject:From:Message-Id:Date;
	bh=UzWg1EW5AHVgx+whYWPL4XlsNpAYWNR/OYo9yeFr5sY=;
	b=WHYz25zY8rJHrJPCL6yr4+6s0+fHiBs6Lp7Ww4ONvApv4k/Zri3l25jcNBMklhRQ
	FCjCw8dw/Sddz33WXQH0tpnTVcmAo1PRo4RQOdSuckOBcXWMZU6To+wtUgfSZaz3Nmw
	fQjgWVKxG/jE58TNb8Uvm1nTUJamA7Is86s4Ia3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651464718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UzWg1EW5AHVgx+whYWPL4XlsNpAYWNR/OYo9yeFr5sY=;
	b=ZD61KbNlNBykoo5EWZtbIuUh4OpcB26B/KagPOJxxJQ1qrU9iuhICpakhQpYUsO3
	Tw3zg1wnnEFZ7LmpCwFm4HZitOA20L2zsIalA2PHXoc4mT9eSbtMstfZcQK4Bn6MQ4m
	emWwU8jvNVGzsaFNYhhz4DoOgNx4vyiBG8s8ARic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018082f7c7dc-2ee880be-b521-44b4-91b5-c2e80f8c3a1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a60c7a5c2586bf02b397f6ca08e81f6b39637bf4089afd4fb7b7e2a2bff4dd6e
Date: Mon, 2 May 2022 04:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651464718
