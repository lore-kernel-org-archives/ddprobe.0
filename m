Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9E20FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657088212;
	h=To:Subject:From:Message-Id:Date;
	bh=AzkRCInPB+IsBsU1qKB5eG7hZ6uNcFJdWOdPvmPJhM8=;
	b=EEwWZqNUVmc0KQ0gZqf+gj2sfyB4p/2OjwrajmRSNhx3uzd60U4AJMnECQGH/pVc
	FGDmT8vwW17m2QN4x3kbZP93ZuyHbXuPOY14qTiFjrt4y9+I9l/dzQO9IPhHKyCGz/4
	XXck/5Z8znjYhdyNJgbzGHUywYnDw/wXZGwNdyeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657088212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AzkRCInPB+IsBsU1qKB5eG7hZ6uNcFJdWOdPvmPJhM8=;
	b=HMewsNpibKuFVUXaOwBK/yWZWQ6UMLVxhty4m4gT+ihHp1gj30YXFkW4JfAol1ra
	FjVrg9MGElMLPGUKLSvcpT5210FnnQLNBJcZxKUUk4+FB9KlY0fFmNLLQ7V9UCXL2O2
	0BJ2hDOe84I9Jz9/9tiyjYIe8lJjRznCPXBsqolE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2277d55-85360c84-5638-4a76-bf5b-d989881a97f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab1fa6b3018d6a3cc7c0b55fcf36d0a4aa604ae5daf8790395e270218069588
Date: Wed, 6 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657088212
