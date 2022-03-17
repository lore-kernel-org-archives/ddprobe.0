Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962314A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647555684;
	h=To:Subject:From:Message-Id:Date;
	bh=QM17ghcdgG+edVHWKh5qR8Lc8y9rhKp8y1bxGwlvBXQ=;
	b=Vun67tBVy+bPn4jl2OKtLldR6iTtqruScPYXAd9L99lID7SPfCEV/0Y/PxFeHjoi
	X1t9K8zTeBxprsr82pQxrKu5ga4PvqXsN0POr8rDhmVtTeoQgq6SobEhYOIPe2Cuf9L
	riYHPZrKxq1tadE7t5FmOsODh3JbelahkdlEPuRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647555684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QM17ghcdgG+edVHWKh5qR8Lc8y9rhKp8y1bxGwlvBXQ=;
	b=caTgbe58lyXhk3u/zdKSjyh8QsoIf5DmYsOvS4qMiJUY/GiCordbgt0oLmvBnPB5
	JhGdu7wQzcxn7WTa3wZKYqWeKyps0IaZlWGh2QTtt5tsQoCJ9ij9HIq5Xd1/LePphY/
	AlL8D/flIU+Kv6M0vKRWCpA5kL8n3o+9/ChQWrTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99f8a9a0-7575b082-3f60-48f7-ba6b-b1df616b9862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9aeef601c1126ec5718a84366898543c8b39d4576d4675337c5634eef7cafacd
Date: Thu, 17 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647555684
