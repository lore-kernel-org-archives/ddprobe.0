Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A075EC8
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645384885;
	h=To:Subject:From:Message-Id:Date;
	bh=3JrOYjQLA/GPuhQFSHGJ3wSYDj1GAORMwBFp85phWzY=;
	b=BjbENXnYt/bVcfUqhV5w6BbQ57OO5EIm8RgoFlSG3aPNvNynJZUryeB/yEEgpHXS
	WGecOmCkoAODfACO5ixoJDAC96hJKW4dGnESIurrhRawShu5iqD8EKzXt3E1A36YmzY
	KCc1D0vnkXVO1fyyBnzy8/pS8KK+4zzRCWtJZ9J8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645384885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JrOYjQLA/GPuhQFSHGJ3wSYDj1GAORMwBFp85phWzY=;
	b=LyMGNyotw57S2UVEQ38hG86tJjIl6VWYZlEawbnONjbgFySy9yMDcbvHaaQSkGAY
	iT0mmggcZtVyiMr0sPqSGmw2J42qMo9VpV5of5pHshstu+Gw3V22rIUX/r8cgT0OUPy
	t64Lss8GoL966s4FOZIF9R0UFgnEksuccTWDGaIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1894e248-d139aa9d-a8ce-47af-b46a-591611bdad97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c123eb8c22f1ed91a0a5d4e56ca02a9f9276e39ba01b9e9e5c93c12e8cea7f34
Date: Sun, 20 Feb 2022 19:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645384884
