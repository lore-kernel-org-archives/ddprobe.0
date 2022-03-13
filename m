Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B219A46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647171085;
	h=To:Subject:From:Message-Id:Date;
	bh=9nFa0SPp/bxp1o1kQgUa4aX78MS2QR87BohNSE9zKDk=;
	b=UCJeSt9lehfP2Ok1/u0kbUr9hLLlhtlfXNR0Y9UJ0ZFQxjcNdh18ciop9bDWoPLh
	Z3kdrug6343ZAIsfuEb2zkv6cRmzUFR5R9XQoiU3cYmfw77pXjx+Udyk0Z2ME6eFhbG
	DIt33kQP73D7p+AkeQHqAOdxNHUyBgmM6krBhPsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647171085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9nFa0SPp/bxp1o1kQgUa4aX78MS2QR87BohNSE9zKDk=;
	b=UOgqoWGtm0xwHdMtjncIDfTrrINEjLAQch20bcvogPuxpPn0pFr7edFFyu23ZJAC
	3H293pINKiEtib/H39sgJPPDZQWvUg6udv0HgYGvkovBg1n/5eMxxoH15bQDwN/0+Em
	XjEfcjB25EP4xXbpHCk/EqQTv9ieVyzRnqjKUE7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f830c21d2-88de1de0-18d5-49e7-bb0e-ca6947956065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 160b5117e9d3af9a96194664613cc085d6fa848d7e696127887454003f2559b8
Date: Sun, 13 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647171084
