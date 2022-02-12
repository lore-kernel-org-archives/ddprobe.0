Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85D22562
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 10:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644661214;
	h=To:Subject:From:Message-Id:Date;
	bh=U7EFjyXHVBoUS7xZMlAo/QyAKYkPoGLriwQ2I4BytZk=;
	b=lBESmU4FvwdxIKyPApMQjApOsRHHXHDrqLT8a7CYi/yY1kbX2ZsWq+CuBannO4Am
	CSgpTzfnuwLAEZffzVVtrwcOHMsbtC9U7nGAxBQ31XVQPkzQpOoJing0qdq9b/ecGPv
	wzvZXRP8UPezZSXjcKYSklUYpSXaAEZ/Jm9XQx6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644661214;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U7EFjyXHVBoUS7xZMlAo/QyAKYkPoGLriwQ2I4BytZk=;
	b=mAZDxpFPfbXb97koND2D3aI5PCs4nB/fSvokhqESOVWN0Ssw8VJzhtUv28b3mVoi
	ma27I5pvWB3PAv7yazslhPJYIEwwCNSlz5wu6A79Mfg4MW1uHkSn93YLr0mTvgbA+rT
	8oTN+zt9eJc0H8bIXlGIbMtvPY+Qc7cV6BQKm3Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed728b4e-91941860-c375-49ba-98bc-b144617e836f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 230f342f77984733cb1defc978def928dc7307d88d27b0b58e8271cc5549a1d1
Date: Sat, 12 Feb 2022 10:20:14 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644661213
