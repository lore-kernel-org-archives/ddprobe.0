Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278047B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 02:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655606939;
	h=To:Subject:From:Message-Id:Date;
	bh=0tSznzU0UWI3wnO7u7A2DNfnCxnYmNklqvlNy+tcHoM=;
	b=hDzENk2Egd+pPgZRwnCEoBNAH25gvMcrJ6GoY+kVSzzsVTCV2p+OymQAd2eDfxvo
	ihC7nG1SiB9i4dQAT8m8UG5b5pRmn+M2/DRTwHRjaR56x+bSjpPRnPi/3+zZq7a+Mff
	eEatmew2ez8BDQLclfND2Hr73yK4ixW5MPACyefo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655606939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0tSznzU0UWI3wnO7u7A2DNfnCxnYmNklqvlNy+tcHoM=;
	b=iEUO0Qw8x2jySuGEB4RaUhKT+3hNRtI4EYU7CIeqKefgmOq7iqn1v2zXow2FmW0q
	WbrB8JYzCgsxRceYC+7+9N4h3yDu+7YfLBUNgo5dZlvm2MIiQ/9Uw67vTkj1ru+8mOv
	uNNcDFxEA96YlYj1ICY8wlAi0kHkHEPYnzHdEaWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179dd0e6f-c6dea3fc-5e37-487f-8553-44a8595061dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b54c75f6a1017977403e1443bd9879647f6c0e11d0bcd6431c7ffe87210dd61
Date: Sun, 19 Jun 2022 02:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655606939
