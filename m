Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACF539E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650964918;
	h=To:Subject:From:Message-Id:Date;
	bh=cwFRqTOKzsoTxaPx3So+gbf3KFY2iefiCHSK81GSPZQ=;
	b=heY8z3j7nLaFmTYiubdKEhXbY9dh9qEHPJGRXgssVEyOGaBb6Cx6c0EMAdQ/eDYe
	T4X4MBlvN/UV/Ww+uoDgdGhI8r5xRFdOEvsdnP9ppMy3p3R7UmaZHZvwueM64asdpcr
	M9drmHXmckj2YXs2nqY3fyJWjt+ZoMhOnwxvBVpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650964918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cwFRqTOKzsoTxaPx3So+gbf3KFY2iefiCHSK81GSPZQ=;
	b=ZJkRx6F1ctJfx1bl/COKkCrhxedyy1nV/mwM1EdlYZg+RKwdGZNh0S5vCkQ3EIzb
	G5ryyZ8d1wXAPqJFslMrHkQtI0REUsgQzDYou2tJPP4yf67GEee+PjmdpPefMer7sy+
	vn9ChtTdELc/T2MTwn6MkXKtv3+taEqUSElMfuws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180652d6ff2-a5ed2cef-7b59-4622-96ba-a33cc29a61b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52b44d9b38d4bf09e6c4436e6f50b1aea3fef6de5583c1fbc92d930fa2edd7f9
Date: Tue, 26 Apr 2022 09:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650964918
