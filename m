Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5B223DE
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649076538;
	h=To:Subject:From:Message-Id:Date;
	bh=rFPnZQnVRCDqnlmXA20IQNtd9h7TyApk78hvElIrogw=;
	b=SpiXAS4saV/iZhO28StEbIt3Y4NJDBpz/cgWFMvRQ0bmkjLpdq00xHHnMM69wI0i
	udOfwUkz0Js6n/FECB5lOXUbNgHbZ9idYmj/e/RcfWkyZpfTpPZDUc8g+zd/mdvQeOm
	rkX4wNXVD92Dn2dj19GaV6q50nElkaboI/AkNDUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649076538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rFPnZQnVRCDqnlmXA20IQNtd9h7TyApk78hvElIrogw=;
	b=XxlSW16ltCyQTLOZ+avoOilcIQ9dyT6PI56hyHh+cdTCbgdYQXv0V911iCgW6nJ0
	Wlol5PBGagAi87JjDDac8coc/45VYfs5eT9VbA3MBxgKybOzX+sv36EOIgc/ZMs/XUp
	R/hCMdshh9SJA3frRPkxZpLjm2LSHG3nqgytsqHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff49f0bef-c0d7c55e-ac76-4256-9b9c-632b11f3aa28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b04bddd8653aa2766ff6d202a7f23a96c4d3b843786499ffed21f325f7fe096
Date: Mon, 4 Apr 2022 12:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649076538
