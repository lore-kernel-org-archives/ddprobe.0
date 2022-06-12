Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8F7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 01:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654997879;
	h=To:Subject:From:Message-Id:Date;
	bh=RGrkWFcK9cTCiuKByq7D22vFsY8ZeNpWBRZiyMO4Bqg=;
	b=ImecOrzs57GW8ya9p2JdKMkt75LhKDgb/Dq2YWwWLZcLMnpvcMhl/veF3toSrOGo
	jB17cOcfX7h7iVaiuokA3P19j8uDHRGlMMh8YKAhBBwxwy0eCs9x52GMdTY0FXH6Fr3
	E1WDfpasHT+DMifTYk1W/Ips1+D+Frx38ujLDaDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654997879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RGrkWFcK9cTCiuKByq7D22vFsY8ZeNpWBRZiyMO4Bqg=;
	b=kO8YKn/hmq+YSahkTXlBvVxoPvDO9tWHZej/uO3kl3g2atKLmfeqJy8SzVorOGOz
	NCf/qSHYDnzag/vpeJF1ioAeUatOfKYiewDhyl4r0+KTT6JYp7GPO3iOg9Z6ICEbqtq
	3xdiEGHJO2IYaEZBHAq0Eann1LcZ0n8MnkVGx4hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181558f89bb-df37cdca-dd8c-4e49-a8ed-1cb0c7dd3b8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40bb6c30b1fbeb30b3d3555a1e19b6d5a90de3f0c0e120aa7fc062d96ddcfeb4
Date: Sun, 12 Jun 2022 01:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654997879
