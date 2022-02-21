Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA227E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645459285;
	h=To:Subject:From:Message-Id:Date;
	bh=Vyed/sqoMgKN22FsPYn1pvyS/FA13RGUeL1w5aUsAYY=;
	b=jChlY9+DeANC8MOWMWXB7ELLNAuVOJdsEi9MlbFUAe8TmgxCsmGk7qcuo4ov8S3Y
	t5LRkY1pJqbLutFeO01rl06iqSPc0ciw7tuH3oOuoleYMy+of9GEXn4hfNV/Ym9RmGd
	QJvaVlquZjm+YUTNhFOdlJi7tg9h0JhHizSDUOTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645459285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vyed/sqoMgKN22FsPYn1pvyS/FA13RGUeL1w5aUsAYY=;
	b=hO1Tesp9LnBwjdQ11WMl3+ZPA6FqSuIU9V7QNZsPSi0SeaDWdlcbG954rcHVz32b
	AmNswpjg6sj67VViX7k6h6JmR4Wr1+luapBGlD5dyM/L22AIAybSDDJ+ZRnJGs/zl+7
	jG+czmCtHYNR39UPraJvI9FbxrbuIYoAdxDVVOaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d04233e-7bc65443-f86f-45b9-8f88-318a29c7c6fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51298e8170e914410dc185826f0a7782bc75b0e95045bb9685b66e301f483019
Date: Mon, 21 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645459284
