Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5F128E27
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofT7BFpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC83C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704448096;
	bh=ehnCL+nwEIgwAj8ZEx3FMMLtvu51Ch1fmvSJMLpSyzw=;
	h=To:Subject:From:Date:From;
	b=ofT7BFpHdMzDNh5YUxBXXsnn1nm4bLgugY2+UkN4KHehOqK3OUL08jvGWFx+x9nR/
	 oCmPCI2eQhf6rWZC8oImeyfj/i+KQqcT5Eo+ZbvXSOnW6AsnrTmXiqe6i5ccwLcB2h
	 NQsysLj+BitXs8l00S4JKqnEFC5dT6GRyT8449HjyyWZjU+yBV+YUXiIIfXJX8RJu8
	 ez37L96a3Bvo3XmGuD0xEY5x4hoYsWfQHPNei7s446lUJDx/ycK1ZDva16CzUIK6wc
	 knmogjF/SZ2PWENNMlvdT6ztPEcpoVe4csdfIL+Jsef5FE6RJjuRH/ufROuL52XauH
	 j/hMUbTpV2F3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C39AC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170444809642.31165.15670905466075766808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a074793b9eb1e488a7a8955d47f8e9487d6b59066e6e0c6e3200253db7d9f6f
Date: Fri, 05 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704448096
