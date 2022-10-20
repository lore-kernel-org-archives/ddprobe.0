Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC93B7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A92C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666263053;
	bh=1uvusHeQu3I3UD8+Yx+vonV32sHs8xXrLh6FUjJsmD4=;
	h=To:Subject:From:Date:From;
	b=ZF18xYeC3yglYiKe3t0egXZ2/xGgdk0/UHSqlu9RJzaDWbkk1UKzIEZ3hObt8wv5Y
	 bvWrEvMMP2WvMWqq8JdOoaBtE6fA6uXoLBKkmED4ipeuu6lQMwVrqB++SvXxWAdWmL
	 hjETUrch3JDeV1J+ONz3no94RdsqrRzKmhFFhTV9FSgS5CNb6JNrnpc1Nj8nGPNgYK
	 FsFh7MlKUCSXzdrELVkzJNex+uiK9TQK7k5sqh63ZU8H042tO4P2uTxHlgza6Ts/+0
	 YL8ok8+HysOB9lzIp3mGHBYlcEj+A/PKWvbfNf1zMAitSuzSmAvkpOE+XxTs40gqHI
	 vHDlnCXBIlULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB07C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166626305337.1648.11484689811275557390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2cfd9087595bc5f0f20b80fe1e9d68e2ba0a3da83a53f443d02a344e9f0728
Date: Thu, 20 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666263053
