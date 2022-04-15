Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4C37E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 12:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650026878;
	h=To:Subject:From:Message-Id:Date;
	bh=A/QfldJuhw7cTgNXi5CrNERK1oT1IKrTWsUZr+Q62QQ=;
	b=KUMuB3GLB62Noaz1IH+P42CvfKyEh7P+pSN5Ckd0E9UmWBjmiEukDxvl6DRvaNjx
	s8D4Ouh7lzeNxZmZ5vmMzHMKIgFpOuQzywHzRVjFzI7nWbBN2WZ1dOSebQDVcrVRwMf
	5ng6s1zYNkZ2rdjMeukJd4oCy/FwDHCtyA32bTYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650026878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/QfldJuhw7cTgNXi5CrNERK1oT1IKrTWsUZr+Q62QQ=;
	b=XRXuDvHJZfR33dpxHKIP2Rzpej1FO4MvtnYibdXi89JBesTpI+07sY7C57NFyjD3
	yR1BsH6cgva7EwC8ura0dcuJaeb/7Cq2FI8mqD4X7LzzbBwIKxkBz4xIR/r3SRsIGMi
	km9WpLIa+mYmeKbZ90/4sKHWUDZPY82gQb4d284Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d441540-3cc930ff-c0ae-481f-8251-f0fdf11ea40b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b1939f15dbe33eb32f8d65b3457d09af7f3109d1f86f75c078fc28277375976
Date: Fri, 15 Apr 2022 12:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650026878
