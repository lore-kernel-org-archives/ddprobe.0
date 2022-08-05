Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618C72563
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659723652;
	h=To:Subject:From:Message-Id:Date;
	bh=20GJs2xBjaFwW0Wua/A2qmOkgfTNiR9jTtrJGHfHmCU=;
	b=HNDKCZShQNe7Q+ceH+iuCCZMr8vKUR2ZOSjoeetQToYABqJtuSxv2C3DptMgjLIl
	hBf1pTkw1govfwyyftW3/INJAa5zmm+Gx0dfoMioTQQCLSa48fr6XLIErDWR7LkBFZ/
	qoMZqDf+h4iF8woCN0tFukS/7QiCjqPGLQy55Icc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659723652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=20GJs2xBjaFwW0Wua/A2qmOkgfTNiR9jTtrJGHfHmCU=;
	b=U92jXrDNbJ1Mn+LcohTrCNjK/EXsWP4FHsGnZeeC4aIZgiWUajD83TBuJET7RQcr
	lTTZIEn9Wt0XWvDo7DWaMv7lrSZEk6n3U9cnGsb55r2p/pcaPeRN923sSpUfTGkf4LH
	XVwsJJQwDx7K2l60Be2CSPRf42mSf5TEoZj9NHlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f3d1e26-3a4cdc1f-951c-4072-a277-d275e3e7d44e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34d103ebd629c9be29c3a09a61e581c049fcfd98f8073726cc6f2d5ef3dbcb0f
Date: Fri, 5 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659723652
