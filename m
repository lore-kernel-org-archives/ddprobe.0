Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE3AA29
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 18:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650305218;
	h=To:Subject:From:Message-Id:Date;
	bh=jbkyiiBMmNccQzbXoOeM973BWQtkGoVoomiAVcvjS6g=;
	b=k6mndFf0UBLHI3WHngV3D94RNfZfBimkyUH17vQWeOza8n3lpewKT6BFGVppJkbI
	CkF07mju5D/y9cbhlrnSIjUIUQY//exsLltOrvyUwccxzeDX8rkWIyEZGkVs2DqfAFs
	Auw7kF2frnY6PX8nd3hUGemARnnEuO5qBDePtQOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650305218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jbkyiiBMmNccQzbXoOeM973BWQtkGoVoomiAVcvjS6g=;
	b=Qa4t3IbpP95DmaH5KWXnrBOXSSyQ0JqqiUB0V1bx2cQycHVUr28YOxIfR4gTlSzw
	e0MtC6Gotvm32ZaIqRKtiYPW9lWcNjUioMZQh/Bvtef5lJHkItGtUTtLVrow8D8XhWX
	4Mf6robhK+2RkMChtfOGn3zS0drtA84996sqW8bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ddb373f-ddf494c5-f0c1-4022-8563-2bf79f7b1932-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0862cb555bed959bbf2956c25b0674a49909beb3ad7b13463deba6010db7402c
Date: Mon, 18 Apr 2022 18:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650305218
