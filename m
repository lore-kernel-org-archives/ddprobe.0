Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6252E2F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659820852;
	h=To:Subject:From:Message-Id:Date;
	bh=R89Ir8JaYSbkWsO19YHhAOv77216Nsq+XcUApaLT9Rw=;
	b=D0fr6xFopcT6iuYCrOIPY2LKTaMTgASVe/9QRoslSsj/EMvOdIYGscZsL2Jk3YKw
	vEZmBh8j6WVGKVp1LmCMtGU4+YkW4u0ZdLOckXWbaBd2mrTzh/jSnZkO8eVs6kF8DeF
	HY9f1sHtIl8NC7BEWgYoNMea6Jkj/M+Pqv0NcUew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659820852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R89Ir8JaYSbkWsO19YHhAOv77216Nsq+XcUApaLT9Rw=;
	b=ON0dSxJwc0/fzIN27nV98g08/TUB/fM4j8t0Gvn8G/v53daQDfuJYO4X/7yAWCqL
	7k6qPDAYP2WxpTfi1tf1jFoHqE417+91AUJvnlytoowhqE0sLqZHiBMMRNoOL3dr9uJ
	Z2jKWed3M3Tm6Cwwpa+/dnoNjZjVxD9wHpSwUumg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275084574-3918f52c-c58a-44b6-b2b2-8ffbf329b946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a80650816bdb0466f3f862a3d7d902deea9166c9f8a1d5f3cd07fc1215872edb
Date: Sat, 6 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659820852
