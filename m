Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE01747C
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66002C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666811453;
	bh=f3KZ7OzGSPRD8tdLtR4tWgtiy753U/OjXTwgsONFmSo=;
	h=To:Subject:From:Date:From;
	b=rKq+ILeTo0ws/i06jDF7tlfrKCPHQ7urN8+ifNXavB4HmhCEhYAb7W3zr9RRn+YrI
	 FZoT2GIJUglEM5r1VJNZKPBS0Hu2Vns6yAyPr4e0hchxYWaNnqwlatEiQCijwMHv4a
	 4JEe1JskY7IO+CqLpsJQFMm/cYbyHs3szV9+4EogeFKTRnqMN+NQIAOPLQsReGyy/i
	 bs/81sHZHyHI5/IW13FdGsXtlDXrR9iKO0XhQc4FRS8/2RfT4poZ6yLt9sikYge5nv
	 G4uy1QMEKKAd2dbKV7cIC2i7nYR7N8Hshvjg3irr3mPiDQPlVhpHc+eEN74liJAzpO
	 cVmdovBdKHv2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F009C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681145331.18754.7217917048129882123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163d66988513af2f8dcaa22948d17bff6c691e138a9e6f056652e4448fd5f26b
Date: Wed, 26 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666811453
