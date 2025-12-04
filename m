Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27AF4A32
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764891774; cv=none; b=Hf4/Ono31v2E2/U+jghN0lcPca9HeeeegUEf1nLxTEejpb9ttWUsYJymKjp0ow32hRHO7b9wr63sjPn32WSCobFd0EdI0utfOGgc6FrxxbWQL92kCtIceUzJ4BIzCloNCQaL92Mf5+H/BQfG7eY1HYH59p5YIKTLcg4fyEyh/N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764891774; c=relaxed/simple;
	bh=3szhD1N8fxJkzOtrU0PYuB4Tyl1Y4Vo4e7vXoEkM6Vk=;
	h=To:Subject:From:Message-Id:Date; b=lIGagQ64kaq5hL5Jv9sN/BKsay2kQBfYm4xBgiatyMaUfsV0HetpEwK1Gt8YylabcrFkF+2MjYA1iyDj+nH+4IkVc9ylFhoRYI/7WJf0mKVQh2uemS+2nPXjC2iWa8qnh6U+REfAiVJMxxkscdTXojGactMVZ/YXcLVzh2GL/KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RydOHNub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RydOHNub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764891773;
	bh=3szhD1N8fxJkzOtrU0PYuB4Tyl1Y4Vo4e7vXoEkM6Vk=;
	h=To:Subject:From:Date:From;
	b=RydOHNubCyuLeGvKiqHY3Jo4bZapzwcgz0HWX/s7rOmaHtuWv62gWtkFJMNL+xpcj
	 MJid5/MO3O6A8Q9A//RK4wrjAwTlyG8wUd3d8bTmw899bzFTDkrj+zKuPKEj/3T4gQ
	 LSD7ImU8jA8f/T0HwL2fYGzAuUGE4FQtA/3Ql2t5hiyVVy8VBfOh3+xgvx3EhhcdYC
	 nfwHvAmK8l/XhEMzTMiMBSmPS5anhvcwMNnTDjkMYXiSCn4DRpNynYkfHMTYaXWdyS
	 S72/vHw4BntiYrrHRqDammpwKuY+roy8TiXiaEboTk7bR/VJo4Z09N4QKgnrVOfRMC
	 R0kVHPRdN5aNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C52D2CDE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489177358.11990.9414893278298988510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d09ac8fd7cb4d1bbfb49d11284f99756789406dbd0d709ee1382c5ca657f73
Date: Thu, 04 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764891773
