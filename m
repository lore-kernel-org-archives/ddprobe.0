Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6681517D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0049C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688887028;
	bh=vzC7YIxhmeoUnJ7UKJOXl6QFTBHNM7cEuO5t0XxHvgs=;
	h=To:Subject:From:Date:From;
	b=mEmrhHYUQaYFPTW4TehSjHKdg6BtHmOc/8KsbUQbPw0vmdPF72ulduZvZtk/qb+o8
	 BsZUVmLCEa/aBkOOzb9Kl/rUUmMTvVzzpW8viVbpKzQLRemO4uHTLJmL/OI8kah+5+
	 Dh+rFOjYanpwOqb8MewutGyFLu3oP9jOg9sF4Nh+cEAAOKwLUfSnKg7ka4dFwWZqTC
	 NUFFFBkpdWyQUMl4/jb2PqrIcjxem40m59YxsdoXxLLfVk44RHj50RHX2fJtiuVT62
	 6zmhFEjqYmmPx03HVwHxAxXL5x5fDruD5+9TI8EM9RoszB57TToH37f6TEi1OzceNm
	 D9+qoZgS9xjdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCAAEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888702869.416.7236898574559073852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814c134d51453c45d77edf030e0a089bada1f1e3478e1299d2f098e202f86b43
Date: Sun, 09 Jul 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688887028
