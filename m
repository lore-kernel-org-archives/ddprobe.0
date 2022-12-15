Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE9828E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78960C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671101487;
	bh=GUIS/4fUFoiXWnfbKgFF22myKGzF9UY30T+XHEy2ya4=;
	h=To:Subject:From:Date:From;
	b=Si08vSPkU9iYHYgjnLNNYM+hZr2VpDLx1EzbKW4bqXmDFNwGiUDHeKV5bzv+b0h0S
	 kFJmZBVCPyqVZzOirCsSIhKxlYjF2TP70gcdxhvAQVFjZPgEjMfIEqa/eRZQ+SazqU
	 67Gh2hM2YJ6VfApfEC0EzxDHBo7BJElqAT1rXc1epJMx8tSQmH1CI5qYwAZdlnZ269
	 dYiZoln7OyJOOk9iYpXccwo5ET4Z0JXKsBCPvzIwKMfS9sIu9jfi6VN84Bx13Mqfpr
	 OQFeZsxr1J8YwnRTUzm5XI1RuV4EkCu1zXSDH1b/yykLKuqyTlcKojpTCanCEiEqO+
	 x+N+03fMoJMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C95C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110148738.30468.11629770937074819258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc3b40b6599228446428a51fef81827351368765dcb2a9bc32b26ff6bad47ba
Date: Thu, 15 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671101487
