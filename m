Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3833D84
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657721213;
	h=To:Subject:From:Message-Id:Date;
	bh=eHxfNwRD33CDV6Fbuf7KklS34YHXmKOBC4T4PA1skWg=;
	b=IhgmQeOJt9ZicYxv8ryfByEVbHNfj4Xetmh3Yk/YS65AScYlt41xtXrHp4sb7qh0
	NG5UM0/77yIUvC9nYbeZclN5OISEijdGr7otlNuk98V1Vse+mn+tpwRLiQaKeoBeFL3
	2PBdeCn5Xs5sEu8cwesmILXCRucHnYUFUWC+syKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657721213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHxfNwRD33CDV6Fbuf7KklS34YHXmKOBC4T4PA1skWg=;
	b=fqJpMRxmslrCkv47e8kzUhB3noZjq1TyFsSzSn9WC2wjd7Ba0CdUqr7TxSfuD634
	GpRET08dJhHB6ZaPwAq7Xx2YMqHhiDPqSWlDtr9P2KB4rmBYN/eSagRAHHHUxLKoyOH
	aJltA2O/0jWvrXtimryzgXMaIp+WY+09mbLaAXj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7e24da3-302084e3-02e2-4dff-88d1-d248621624b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41689d552e656ef04879b7c65268e8fbc8959eae4c7705a73882a476e6109337
Date: Wed, 13 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657721212
