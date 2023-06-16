Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554F06117
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E55C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686908948;
	bh=afiq+D/g9ZDbBfOqlZgd1cRm6ekvsj8LuAwg+BSbGr8=;
	h=To:Subject:From:Date:From;
	b=onKg/y7Sna0mVKeiFMXUcBAY+TozlJtPZT3MJpIlhCgbB9lGtp+Pcg/q/2YdzxPwS
	 o6F0nY859Um9URshOLUHHtzTlNtd0R7/A/kZwu1N6qMJq06c/rNQdwZANM/f/PxOgR
	 WXEZpW0XnYmvdD/c706P7lX+vFpyz5gdP+RwOaPo6VyWMnFMHzlnT8ZBFRlK0tgjLM
	 zD7MbYGHMOErqKI7QGvc3kdp6OK8IMc0EEtu0Vp1Yufd/6QpN+oOniTxNfuTwEK71q
	 ARGC12fJF3ua4B3+IXc41RbuJg8ONEi0j9+2PWncvYRu+maz/f3nTYfWVnnF3A3g5c
	 0+g0Np0WNF54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD05EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690894869.6694.18284856285735053423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954a8fd1dacdc1a6ba08f981153f962e86aaae756117557c11f7a32c2a985c72
Date: Fri, 16 Jun 2023 09:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686908948
