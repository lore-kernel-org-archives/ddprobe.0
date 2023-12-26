Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B710947
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCUSXc9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703621296;
	bh=Ia5efDRn9x9c/AurXOO3hQUUlhxKvJdesvpWs6gVTLM=;
	h=To:Subject:From:Date:From;
	b=WCUSXc9bKdIX8uTHUhjisyQSYpWI0ffNS0UkIDDdM4VGXU4IfSHJbSuDIjm0uPAvV
	 a+1aJ20xzfC3UUSHyggx3WrfcrBLdzu3G2XytMETK88C6MbRmi/1J46dNXInEDPvvC
	 t2ukfYkFHFLbsvqERH8iC6WKWMDuylbqUqTOepSKPXhO05G8u+ExPxeqOuXOAXtLIj
	 dwXVl2Iqv6LHNxr21h5K4lupjA8y1UqA8Ab9+CQ5u7cfSWE5rU36kfcxflGxupKRJy
	 rpXkmyW9GDx9sCZZ+owJGgep7+LNaeMh2Yqsj65x3Gi5UezCDB5lSsrnV4QLetMWIA
	 ta8d0CGsJssNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77229C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362129647.17218.14113284246503576699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057c2501d08f6426f0c3fb32b4e46825e6344ee852ce03e6258949d4e6a88a2a
Date: Tue, 26 Dec 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703621296
