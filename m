Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A0E800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645596385;
	h=To:Subject:From:Message-Id:Date;
	bh=1pRcNEYt12Z659NReL5vWoFW1b1JkMzOjabtra9htHQ=;
	b=UmifYvbYxFkR58vcg4eQgVBMv2pl6utX7JwBoDNTx+8kfS+QnUPWUUPxC4tkXnQj
	UhfplNWEPCKfT/722BUsMQsOR1QOm5ZYo1N4RyTqZ78rI25erHGK613n5hY2sbjgcCj
	DeDwjyZ1aef7HQmnLB1E6ysWyCUEjMNvadbrjDSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645596385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1pRcNEYt12Z659NReL5vWoFW1b1JkMzOjabtra9htHQ=;
	b=eGMnBY8dehXNBNhj9f8bM9TUQ3Ed8jW8SkBLaKd2y297wAHBfcV6gKs90cRUyEuj
	dSwrhpYeZhcKMB/IXnaT/SUVqO7h6+6CkkDKGuakIVgME5q671fEdLmofyNkpwknPMb
	lRYmLCIbzq/PmXgucaDVz4/bmUOzOqhXQ7rEy4sg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25301e76-91e84b11-dd9c-47a4-a752-83017436c0a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04da778f20447c03519403c3873548a301d84e36e481202205d4d218f8e9d2ff
Date: Wed, 23 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645596384
