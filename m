Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E214291B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717539983; cv=none; b=bNNEQNqf+QdTeUnBcMOXfx7nLsTU+HB8hYpQrv0FRrNacNJjgqdLXquEmG1zRR6WdA2b9NC5aUrBcqn2R9C6Fx6TFhi8+pLxc7Ofj92ULBl1buFlCcl2soQQMW2Xq6486ED+6cG1+enPS/NanmLRcC8miLYQ3ShyoLQWq8uNc8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717539983; c=relaxed/simple;
	bh=pa/v7ic9OTPBFOu7Z6t88stgk/mFnKbT/TSxaXg1CuA=;
	h=To:Subject:From:Message-Id:Date; b=Z349oDM6y9EYN6Lovw48X5LA2C8ZFj9u7P8KeWj9BYIPwrEhxCfWx6MQ7Lu6kqdqO6KonxQDiRUMUFrtTXrHP8joQZv4xW+A/kji4I5ZRmrUMb7kC4+ut+P4s1e64XtzfLSGvbombYAzVZg5wlRy5Xl3yy48HuNuBGVZqfyIdOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmV8ZT8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmV8ZT8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7E2C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717539982;
	bh=pa/v7ic9OTPBFOu7Z6t88stgk/mFnKbT/TSxaXg1CuA=;
	h=To:Subject:From:Date:From;
	b=NmV8ZT8WKu6qoSg/jEavSzj06hAMPXNweNaScCc5M4i6JdS6ifjBi2SGxl/gRzv1b
	 w/Nzk63Ml7ISb941L1oQg4YnBTo+3GBQhvM6aV4x1TDsTMpWNyecDMcMyFgOPOdL0U
	 jE0dquLJiv0k6ECm5iacb9r2YIcHm/bsYOkRkkcwL/c7u59Vmu2ebdJea8NFeHvwlB
	 IGCFrc3Akg+Z71/293lRLi5ph0KDORN0a1NroQdrCi9g8hDnmPk1VZYOOgIXWFWHdJ
	 WjInLgcOGoMrzp3Uam6X+Dozw/P7zvirXEcBicRVtf8xjDOvYH4j37Hwub3aAh2iTh
	 D44i7sugkV2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DB6C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753998279.22647.1527548289923687721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762f413d0e83f5f9bc7d75ea0236b1dab477f6f34879851c8cdea51a0fd414fd
Date: Tue, 04 Jun 2024 22:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717539982
