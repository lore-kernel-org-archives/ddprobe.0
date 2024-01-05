Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177CB35297
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emNO46+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89896C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704479296;
	bh=Xq7wlZ5l80QkmXs+ZtlPa0XNLH5CaVPykS0UpLcTG1M=;
	h=To:Subject:From:Date:From;
	b=emNO46+DhS3rePvogMJNQykvEOqIRG3hY/sBiep42s7JshmjonslRICMQQumGBZU0
	 oAzOQL0wvTEYXJMDgZQXRk+GYd1ecaupa+Qh35l2Htqx16llfm3o8Gv7iaqm2Tg9kI
	 Fgylal+VzoLSA9iwpvEpN9RfLt3cvqu4rEcFrju/aNLDa72ftxofG4FjW1p6bzX6Rw
	 G4WcH22PuzndaHQartttmcKnaj1eQD1xscBR0v0UAn2fOJMDiPHR+AcxP+/hqdvpsP
	 resj3ecGeUlaOhgZ6exubD0OkCslllfPS3iNATd8U7ojQIVV+UaiyEBmdJmS0YJ46B
	 hj6w8iJEVNSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB0FC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170447929641.2620.1195855543895445890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b0f1bf009056e8aa207eb8728e127b3de0289e5b639190b21ffd0085d47e74
Date: Fri, 05 Jan 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704479296
