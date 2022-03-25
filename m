Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2527E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 11:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648209358;
	h=To:Subject:From:Message-Id:Date;
	bh=gfiQmrTgHrwhItoH/ma5FtFcCkKvN7FSd3Wu+PT5jHw=;
	b=GiOs5JXFhpPeByxBF/kYUf/yejwxsjgVOOTzmsaY3Ko/V18mVl8jscSKHqCtcCw/
	iapfiFwDVvwSVqVzthUln0ziN0DdosEhqhec6npdursTvFJbGcHx/yDYqMiotkMSx1S
	ySW2sGzRM2FUgpqteqCe3rl3Gy4erFvLOgrrn0nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648209358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gfiQmrTgHrwhItoH/ma5FtFcCkKvN7FSd3Wu+PT5jHw=;
	b=hN1PGCIXSG0lEQHmzdq+M1zhaAik8ahsxn0/RxjAKeysfF5LgYzhSBb4DD58dGi0
	YMKO/kUcwkJRb5qs+T67PmbiK2ndE+vlQmpbvv12BCKCZdhUFh4d9f45ZRN3Th5rGe3
	yL4hvrkVVUuoBEFlkbd0zTXMf81sPzu/Qa6GikS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0eeedbc-fd5af1cf-5ec2-4178-a182-9d8886b08466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25853449dc28ed5c7a86279bb65d470f233f0969b5ac763ccc8577aaa4eaf38c
Date: Fri, 25 Mar 2022 11:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648209358
