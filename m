Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB2A15AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C26C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665484853;
	bh=YoHfIRW6ktMLfG2zhzQ9CGxu3j4Me/bah00CyVwkv7c=;
	h=To:Subject:From:Date:From;
	b=pTj0ZfkgG/ZlmgOk8swaa7pQU2kXT16g5A26mNjy1VOlcRT49Whgx+k6EU36EuUAz
	 FShnioL6l5wXDN2uFsm6YNmv1Au5ki7tUoIBkmzyTSltWp5CC5HfDSUlKVw1B07SzU
	 +mK4xXZIfOlD40JMPQ/dPue5KysQff1r+HbGhqY7WkBnfFRNdkKe5yqYStwor1kpMB
	 rQCu3DWg/vXVOHqbxkUZjEU9gJRGbN31OklfzdO8LZEOLXwD+Cch3yAxPDfK0sgFbF
	 qQ9d0ypELYm4+n3IUwXK9qWuTqwAqDd3wwI+qz17+idIJ9fTfaHB4evnwHvXyjTy9O
	 bGmlVI8WNgCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5383BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548485333.21515.10852403807708535037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace83a1a5fdd79fd14e6e9d151efc6af32f0b7877d1fc38b1bfa9db8a9fb79f8
Date: Tue, 11 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665484853
