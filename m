Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367864B1E78
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746701394; cv=none; b=WZxvl1kcEY3npN57wcIKjjVOgqRhlTdMxxODJqG/LRRyQ0env12m2/BzHyjV1id9mSvE6X+WftNixxkp4bitB6qS+IhamIYdZp5qtRC7y7Jve1JJAk5weKiIuCmgDxOQHtD46fvVx4zYDpAFCZ42maJGM/4O4arwC6wieJgO96M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746701394; c=relaxed/simple;
	bh=Sh4/WleYcJZ7su/6wBTOqD8N+nniH8RGwu3O/suwDSU=;
	h=To:Subject:From:Message-Id:Date; b=bB/vqcPRzwAo6BCGmLKlIWGjLmFGEYRiVE54gyLTTPxh1qHRGI/tY3qdJi3LxNLGlDvDgVVMYrJsJbt50Dfo5bRztOCw7HwLWZfepa9ewDeaDd4BqkiHboJOO5rxghSxKcMjG8/5vHt3c1Iq23iGK2JxltDYMyMXiKmZMj4Uw2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2xdrI+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2xdrI+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF38C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746701393;
	bh=Sh4/WleYcJZ7su/6wBTOqD8N+nniH8RGwu3O/suwDSU=;
	h=To:Subject:From:Date:From;
	b=P2xdrI+n2LsBZItwGTDK8vZAPtdacJUQpKjS610+YYmVCeg0JNJ0QfaaWibWuluDY
	 cBO8N2dZ37DCWiGBLr5oNfGudXmqh24Qx94METho/uyS2EL4LNv5hS/jekpqxQoBci
	 1QBkCX2AIzPezToOd80R+wP7UoH7HQu2VlWV8FDcu/20/kgiSl4Qqm7F/Aj8TnsVZ8
	 lUHilNWGhemavAPMYBVylIn/hRCF/GAphJPhDdfWSBPtLSumAWA7ZYfSzTRIOHXtgG
	 6aMg8ygiUFc0keyjOQ+YH9iDPk4fkDW3o8eT5H12fS6PkvuM0yNOtFgV63LlCMn9mk
	 tWCG0zsZITmxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E605C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670139357.6744.3893489482962748737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3798f63d75da2bd69c6373e723f647e0ea21772182d96f33b90eea6a7ff110
Date: Thu, 08 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746701393
