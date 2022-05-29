Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E7F7B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653831359;
	h=To:Subject:From:Message-Id:Date;
	bh=1X3AIFfaS0beLJpMwJqBUApAdHh9+dIkwJHPZDiIsHY=;
	b=aJxMTterZ+/JULu6BekAVVTYpRnHD8a7j576xtFMn7B0m7rgkilYt8bgeVLJt60E
	Sr6rr4YViTx5LbXydJwjjbiUljxpkshKV1GL9jlZ87DWn0lralJRkFCCtMlOH0EanJL
	3KBhb2En1WZvR6Vn07DPB6TiHdgkMmuhKb67McjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653831359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1X3AIFfaS0beLJpMwJqBUApAdHh9+dIkwJHPZDiIsHY=;
	b=OX0mMkVwXyxj/+P60m09A9oA3d7UCfZsdPGerx+mKNOEm7GclkivlsuOzeu3yZnK
	Ozj4N6GB3htIlMV5mG26bzk5cQ5YQXIH9BNaXB4yA546W2GOMB26zaO1Me41EuNfOvh
	O67sHEmrFPxESsBWR0enkuf/7t3J4ZvSTqMmBj4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811007db25-fbfd6c57-e7eb-4107-a34d-311a86d84f86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 073b2af912891f8246aca319de96561026a5b2ffb47bda36ca043aef78047654
Date: Sun, 29 May 2022 13:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653831359
