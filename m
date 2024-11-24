Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F56529A9
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732464954; cv=none; b=LxwQoyLlhrVmpBmWOxSaJk8am6xzF05PHUWfVtYD9eQWR8R9zx499qFyvuztncvRddpSitZALGtKoZNQhYqbBMQESGRhgf1WR2+oddo3DeHF1RbNRgcghj90wQ2KBwxo06mzUl2/jAmrpCCtSm+btLKjvKbcGpHXGsUIj5cpkxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732464954; c=relaxed/simple;
	bh=85Wn2UNctkEumb3twgTrfqrNDmMsqcWfITOOTgHieNU=;
	h=To:Subject:From:Message-Id:Date; b=UoRnGfYd1NUKDv48qIrgVY7RZF2MjWvX9p5/DkOuEsD1ciCwNbRgA2qKV77Df0Xgkd0tf24WdQ/AlWE4X20a79IQ4Se1wE2pn92MFlJ1K6wbFhdNqJzv8ZR3RNCCx+iKwkg4rqVnTCS/kj5JJstlyyH4B5hQWTwtGeJG5xrwnss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1C7ejMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1C7ejMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE16DC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732464953;
	bh=85Wn2UNctkEumb3twgTrfqrNDmMsqcWfITOOTgHieNU=;
	h=To:Subject:From:Date:From;
	b=g1C7ejMJuilA8Pdrf/KFrHGxovleLkLQduSd+5dLJUIlm+Qs2Ozf3m34IsJzJhvqw
	 IVLPfaxLTvPdMfexX4eQ7KNCbFAIuJaIEWwP2ZxGrQT0ggDWdg5YewDPfSweOmXUWB
	 Hqx4BYbWvDDF0SlpMsPkqxxOuxLHKVTL4hRVIDQk6IfIEmNWlpCqkSRTpzh4VMDpwU
	 K9yg7lZoGG4VlWQ/g81HBGr7ZfcYFV7AhsnQMsEfQxQMCHi6cujt8ThQiO6eHFq1CW
	 dYPn7cr4IcuZqlWrdGj6OuJQhpJZoxl8Go6yWQ4GIxpg+/4sZdQSuSfVpR6NJUoY5D
	 4ydblp9GZW+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF7E668BA
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246495361.20658.4118778403683741541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efea20055c21216dd61eefc8c98c0ebe91388d456c9211dc9d5281962127eab9
Date: Sun, 24 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732464953
