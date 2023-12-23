Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113F18F4E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA9Np4qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8742EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703323696;
	bh=ZBqXYpTa+c+JlcjCk1q29VW3fkj2SgQN8lh8cojt9Rk=;
	h=To:Subject:From:Date:From;
	b=NA9Np4quMWlZDVDJjWVnQyDNFXPvdudL3Gfg0mco949v8xeygDDqBIxAXWAzNZQJ0
	 /Qk083GHoR0xfAoW4Zg+/rLHiac/f9lR/4s4uV90ZXTzJn/7tNt6HNMur0ZEShTB31
	 NnshW3Hq69n14qnOKTdtEzXRZh121mc32q0fwGKlWh+Dy/oaiHyrhqvyMByxxt/7tl
	 FS5KmrIkzx7+NhKHYV8Gd7zuc2qHUW+CprEVQi+Zdsgv9Ig9m9KM4AK1QN7fqxlRmh
	 uhTyRB+19eU3PGy0gRUvOho+lZ7b7n8XvsybjcZ/TWOlmLHvn+Ie6sYLq0QtTG2P1X
	 jZGZoWDcBhD1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D7CC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170332369640.31816.15444534981995732220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fce210105104570e3865a5025854210e4dbc0124524d89686d65997b7a07320
Date: Sat, 23 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703323696
