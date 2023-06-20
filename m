Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C43116421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E982AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687269728;
	bh=UUvU6v3LrU5ZplauCHwGCy89FPvUyLVQdNMkOBKMRqw=;
	h=To:Subject:From:Date:From;
	b=LOBjkmd8QJ+/mTd19pe5w5OAvOHTAJV3iPNg0GwfLqu69BjLtX0sMEWsvIK+KVUH6
	 Vmc5SyBmIT47nwEe4JtB8uDtL2Y8CJyQnUh3kLaFkIlA9NcDVjFI7Ve1cWqt+g9xlz
	 M51iYJpIBFZLHrcrxnJKLU/reSNM3TPtwZIjcNsutGgjcHTdVR1Bhll7NdUtyQzxLu
	 c6szdubQv+8T6jRDUEgPkF+uFZ9UNmjYfFzbtYuNE5sCOQUwdjYl4bOnxYsGd7NexR
	 O8sq7zW9hI3Ud9J9D/Uj3Jx1ewmYBNgoMcBbuS6HQC3OXRjVpIaP3vWN/WxclJ8bXz
	 rGviAgEAT8clA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95EEEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726972874.13150.12078492286680025075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17345591258dbbc67d02e1ef7671aa52266f36ab5512d15531ad72a389033fd
Date: Tue, 20 Jun 2023 14:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687269728
