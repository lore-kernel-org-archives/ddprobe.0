Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708A32FBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787973634; cv=none; b=hOPRYTe1TMsnrxGqfwaD2wowAYLpby4MufEGzjyli7Ej4eRGkIXeEDRcIacauD1X1c3DIgOMHO+LVSisX/nf1zsJ8GhHrE0HH3EPHNjWmbLoI48uER5VSq31Kc5v2T1UP/h/RknlhA3ghy8ZxRwjNZZMEtNYM9LXdqNn68E93kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787973634; c=relaxed/simple;
	bh=SZ2mU7CA3uJBmThJk2dUN4m0o4+QeHRXbyV9NIDCimE=;
	h=To:Subject:From:Message-Id:Date; b=bdXUwEFe6MF01+o4KaC8UdkqDBJ3ne68Z7M6p2wrECcRLr6VtBDttge4dGyo8Kjog1qHH7a3M4OX/zdFxmrkCUKwzM1TV0zl2aZKfgwXikBn+2gsayEXUqbciggdJUDGS8AE3IjpVNhSgjXxTfwSr4/NNvDQ7Sxv/CRaJSv09ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl5ksmk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl5ksmk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DBBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787973633;
	bh=SZ2mU7CA3uJBmThJk2dUN4m0o4+QeHRXbyV9NIDCimE=;
	h=To:Subject:From:Date:From;
	b=Dl5ksmk+HU0Gh3BfkTVWaavcfD0HcKZHAk6VFWv7vO4uOf8A7ZtkfAFgbRRIeMurt
	 08h1bVw2RJbw4rqObTDUX9M8ai7G53d5EhwJNKthGLAIE2PgG1yRxWKVR9d3HqASjg
	 9hHGlnGukvvGxPDoJdceaXFBcJpfi7Z6m8mU6imrwhYceGRiya6KhW8tCEhWubLFcc
	 AS9ne6wpB092uqRv650iANOC53XIvp0Iz2HyW7/WLsBFQzHfE4mpq/vEahMk0o2pnM
	 DoaEDQCwDX1HwWWVHclkWd340edkt+O5CPsEtnMqWMgJ7HfORLTUcsb7du3WryRNDF
	 l5KCqru02maRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D9C61DD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797363369.10865.14624388168798459723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7064aa0258cbc92e7cfd9ba5c9d7f71a2a996358dc44550df9f7a34f0396c9b7
Date: Sat, 29 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787973633
