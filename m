Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C47A20
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 22:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649545198;
	h=To:Subject:From:Message-Id:Date;
	bh=74Ixg6v3IA02ZWQaPAWUb3Gdw1xwJR2FvTOnDpx0xGE=;
	b=hgRmZoDuK2KxrbzPslgPGixdJRiFhevVOCV2hglE3fe3bz9eMALLYiL+F1pbuaSf
	BlxwSwnGGUSFM/fApchJ5/VVbyuXzS2pUAJgvi5+vGuwFVQP2iCXL7OUvzuRLcvj8Xl
	zfxu0I09be2SJDkRIvFSOoC4l23ZD7vZlDi6rHp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649545198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=74Ixg6v3IA02ZWQaPAWUb3Gdw1xwJR2FvTOnDpx0xGE=;
	b=HfqttFItM/vkSiRfVXhokPvYU3bYThBsjq41PStLQ4F73vHcmg894nO1gqOWXi33
	t91lvVbEkRi5UPOe5f2Cfc/9xVSxqsg9n5bLLds2fDEsEB/F4hk+NK6Xis1PFvetWWb
	2RbEQalKq4xI6kjiMr7ZpKDiTO932jr7mYQMwXUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180108e3b0b-a1e89743-8913-4749-b866-0eecee0110fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c847bcf7a0610c1772f4b312bdc0a09918d71493274840127d0314e3848ba218
Date: Sat, 9 Apr 2022 22:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649545198
