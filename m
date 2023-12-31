Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E0AB65C
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNCqTTr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C676C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704049696;
	bh=66Rpo0uJdQyEQymuhqOdI+taNyBeg8t6JfXW64rXdFw=;
	h=To:Subject:From:Date:From;
	b=YNCqTTr9arNQ/2mPiFVbYFcgmtKtOOlAnpa3K9O9ngZLkWsv/G4eiJqWn9NJr9zgn
	 WCMWL0349UH3drj6QoRMdYsdqzRR3g5LBYdzOztSiw5Ce5TvQlaxI/7xd4Hsw46uTD
	 BaN+bf67T44Vzjd0H2VZDLANku2k2MALewZ7pcLygNqohUh+eEyAxu1tAnEakU9qlC
	 HEfYvms7k/uwJ4FkvKN7+2a+Z+dsLk/PZMNmlipcqjJ7spf8Omxr/Q14uRTpzWLzOS
	 aGgIWeatauFvd9MquQmSmz0JNDMfEmREiIk+7GVvGfQstwiZZigPA8NXSh9M8oZgI6
	 2yAUgMYbQzL5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F607C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170404969642.29821.5157819947706468777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b4f69d6ecafdfdea9f7c8b9182eadc03a6fc1be22522e1e8d9549e177e6218
Date: Sun, 31 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704049696
