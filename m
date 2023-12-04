Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035369469
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvpW0evR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF88C433C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701675496;
	bh=gr+H+f5pbLaFVLSfYFil0mkvQbDNjLXeD5+CvNorm0c=;
	h=To:Subject:From:Date:From;
	b=bvpW0evRbQ/QElO43N0zJhwxWouM0pdMYTRrozcr4ESVOM+POGW2wUyUXpSmLvXM8
	 /dy5aeooOZwjkNlXc5R8GAZEkECtIN3qykxPxFPitIDncUPo0xEX3ae16471JPn7ye
	 5Tf6pNvvMOZSKuVGB8Xg8EpeNgZbjjicZlBsCcFt+Y9+VZaFxI60EzKsCWzC4EtE5/
	 4M+mGkmsH4N2HJYXjj7NNvKM2D0FMJQyf372ptQHayJtvX/ZaMMdL9M0WyKbXj+gTN
	 Dmy37x7BINvIOw7XZ3QKV2cUOlRtg5UciVuGuCSP8bc3Ve1glrkShhu19HbHT0puzH
	 aucNxR7EwCkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F658C10DC3
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170167549638.24895.922511042313893932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e928c4489a6a77c4e80da248a6c7270fcce1ceaaf53eeeaf82dc74590d0398d
Date: Mon, 04 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701675496
