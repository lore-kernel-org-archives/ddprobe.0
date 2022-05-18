Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A30B23A3
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 21:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652908799;
	h=To:Subject:From:Message-Id:Date;
	bh=AcnmLO+d/zzVHOVFVqBZ38iFafDh3y90oxj8DXKgO9E=;
	b=Mbw19EC1XtCB7cm1TF20aJJ37+pPU9aMwnQJomzikI97/9/XeeucGYu5hUzQmbsi
	wAjOxBQ5b/ePnNvBfSsAg3g2A5WXODrckCmwrGL9YnC/Hi+OfSTF5jT1rntVvjt1nP+
	nQJDgOjbfWOZFd9rWtpDtovti8wjq+nYux92PDa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652908799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AcnmLO+d/zzVHOVFVqBZ38iFafDh3y90oxj8DXKgO9E=;
	b=QGhXGISNYkDPmD+37jG5nd8V2rwnz04EBp/r/yBCN1l1V3QQxZg5l72qz2qWOhdK
	gc5Ky51sPIFOulUgRtYQNSxfOhjvP8BtYeCcBet+K9Y+kcqXADNjgTBaLgS4Z++h9KM
	F3SFMKlkx6Y5Rh7LRNcHt+IT/gZi0JzJaYLWLmA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d90ab523-fea2c9d7-65ec-44ce-a307-36a3897c4622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bbea6a54b0025065f437aebd30b174962a54681ffe10644a83d248fc22cde8
Date: Wed, 18 May 2022 21:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652908799
