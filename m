Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1317D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVci2gfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81463C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699099096;
	bh=+dUr7r1geF6ntcX3WdydMx7TmizgNU386cpznt8agEE=;
	h=To:Subject:From:Date:From;
	b=oVci2gfnQjFKJVuRg0ci2iL9FIcMsLgz/NRe5yS3bGW5xxKREibJWR9iJTI9zOZGw
	 v8mXVriDBXjRJdarXPxpTIi8S0sPaa94Ffncn0s3xeV6HGSx3nLIWAnxHtHjc6hsBy
	 BR15e/NHV8sdysPIo0EEJcSTsXDCfMb8Vo8hwojA+MDh2nR3qsjmeLa0UwZKP6Po/j
	 M7UKusIdsgAcfspe+vLBbafWL8sdBq06UxaWlcXr57JulPCgXtnjWMCNYp9pgcVhCY
	 H64wGk9KIohQCd3TArSHZER7R4IVyVqxqvJ54BCVxo/xvYcjSxcb6qjNQte2uMLJin
	 /L8D70Dpy8n+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669DEC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169909909639.1935.655613392324165281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5ce1268ed4d10fec19af3badcd8870f4df476e3a0f1b0ea0f099cf75899fa0
Date: Sat, 04 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699099096
