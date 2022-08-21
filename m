Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B9946AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661122852;
	h=To:Subject:From:Message-Id:Date;
	bh=WuDAs3zbveEt7VWT9QiSGIHUH6FCNW/laqk8yzNlLvI=;
	b=Dc09MjJllW8A1F3ONrM14TYq1aBjFxz49k+8nefpai39EFkS/Ligo1K1l76zkKMA
	fjWGQxQy2Hl7hdZAWymhHGvKTbShjWHddwHdTxBXTvIAEVSuGHoKIWSwcW16wDa4HdS
	qmBhePW16sRigesJD4rLL4ElAOX7hb0VQ1w5BcX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661122852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WuDAs3zbveEt7VWT9QiSGIHUH6FCNW/laqk8yzNlLvI=;
	b=iRdqHnoDapuh0cD7fqU7oD3eo71bIFbwrb/iqlV0FTnM+TCNu02YoQgpqQ7AUYUt
	TmIDFyiUakUkfO0TNY0xSenqdAN5YSBFgdsORo6N6CUYViHHclaJ8zyydMMutZPdZ2Q
	3Hn75bDzPFUPn7KLvNbPhYDKiXJmJS7PxdG0P/WQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2a33706-6f3d8ff1-7a19-4b7d-850c-cc8b1807a1f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca83c65fdc2a34a15f72b737b44124e31ccea9bcbe8d2caeaf7615e4db51422e
Date: Sun, 21 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661122852
