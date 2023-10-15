Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520487FA
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 01:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7ebJqZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8829C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697333228;
	bh=OO2pz+iBjcv+7vj3J8KqF+mhBVLpjAabY3YPc6MpkIM=;
	h=To:Subject:From:Date:From;
	b=X7ebJqZFJx8J37E3wk6oRPP+bhaEzex3tBLb5U0Xi6hxd4kpKoFG76jVjUW6jD3zV
	 FHtN5SIY/TmLO2L71W5mJsdIz5BFF7ZX57ENDj2zMXVAsp3zztO++kH7h7A4vNBc07
	 ggETTNGu7XTg5NIP+bg3MvfRiW5LwBNBfa9In72JrVm9kOzCMNq9zjVHPS64rUY7v4
	 CXUQjP/Zt9xabSuVrHlRKoP0Zvb48wHvN8pnN17cytozclzu885JIrwnOoDTzNaHGR
	 0jVJNeKI/P73/YIJzm1WyPyO9rGZA3V0KslriT4aM4s9317ypzCFhYzCbF1ze/TLg6
	 bhKa2MSkhqviw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BC0CDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169733322867.9913.15878536106035279501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793b08f8cc9e5a5a1082a7b11c6701ca887f7b8b453638170c2f6ce9aa1f22d7
Date: Sun, 15 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697333228
