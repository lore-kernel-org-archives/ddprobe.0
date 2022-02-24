Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD72B185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645705284;
	h=To:Subject:From:Message-Id:Date;
	bh=XZ5/OMPeUYuCd5kir03BPdDEeUAOhyZ5X2w1PoWmNVw=;
	b=bCMbsSwEjiiJCE6nVNyk/oUfG6uu2ncfQLr4YVZCr3ZLtmBmNHlRe6r9HT0gk0RD
	OF8PAO/m+oCl8xIxlRbzxKgXPOCPxJkAWN4cbOdxQ9STUhriGpI+7Y6Vse5Mnx4sYqE
	CkUste2aXaQdhM303EhgDSfyAD5i1iIQOg6MnhpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645705284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZ5/OMPeUYuCd5kir03BPdDEeUAOhyZ5X2w1PoWmNVw=;
	b=RJxcFhyygDFpZTCkz+1bEgd3qTebEBCoP7bXr1JoydqWruJBLDnjAghhqY17jOr4
	8P3cOiHnhVE6/p9gTYAeXpK7wTD85O9UIBWu4XQfdB5g6O/ETqKdABQdl6MxDIXtcm0
	iHVEvcBU2JKrNzfkaPGm4SmIuGjF5oYq9NvkCosE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2badcc97-df1b2090-8732-42b9-b021-a7563b22f091-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9920b7772f7f368a8b42f8704cc0d3b8e9b976dd1f2bf3baaa609fbfae5ef0b6
Date: Thu, 24 Feb 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645705284
