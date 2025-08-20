Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3CD22A817
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755671994; cv=none; b=aDd3FUYqfer7tS686G8UTHehMJJ5777LOTX7KNfgsUWxUbcnK56d8v/g5Mki9zDp4036YF2lcQCOnPkyN0BOt5cvHLe9eMDZGiUwdFTMGAXmIWod7b433PU39sOKiSiilRzHhtWfSNdTS1IuOxmFEwnOLd/9M1j3n9WuZxfF2oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755671994; c=relaxed/simple;
	bh=cIraYvo3FP0R1MKTC6AuuxJn7/AEe5wCcu+vBjnkemM=;
	h=To:Subject:From:Message-Id:Date; b=hNbPpVl1DPUc262oXDwiSfPKG2XDQ47gY5NhfNrAA4vL1pMt6y/XZQgxpVJV3qBW+L7B9rDBmE8qhtYd0/XQNzyJ/cCNOReLt+Z+LMqeYiINIi6kfLNiDp0bntJr3OE0Jb27pITaHj4APqbeElsI05ZzD3awS+2enkqSaHG7Qqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWh/QIzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWh/QIzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C78C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755671993;
	bh=cIraYvo3FP0R1MKTC6AuuxJn7/AEe5wCcu+vBjnkemM=;
	h=To:Subject:From:Date:From;
	b=mWh/QIzgQwEu0G+C8txZOdIJz+VXyrVsD5vAZv0CZ15a7jaCNkKj6yjatNB7qbnu/
	 AJ23o3W6Md3PIzJ7P5AeACFmyZoCkJDvqlbhZn/dENjUie18w1fNXH6wSMPt144uWP
	 WuAIYbfFiH55tG7BjosxZaJFCeA0zczF48G8PJuzgaMm6j1316Kv6TJxBFeOTm088m
	 K3tNg4fYLaYkjKil1LFQzGDkrQRSEpZlvKFeMWcdUvm3XRSXpsvinQWRuBd6ILfMA/
	 6mxPwE+L82QdF0FxkVqTQyc2bNzvTvrFS9TuQSFu3koXmffokuWJoOsMOmlrALCz0J
	 lhKYKxzlJBOnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1ECA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567199357.24450.16498025797538171692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42eb63a2c83ab184a78e161fb0505e04119219bd370e14fba280ad0edcece2a5
Date: Wed, 20 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755671993
