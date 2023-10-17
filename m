Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D284402
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqBv0nif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40BCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697507828;
	bh=oJ5xbMT0dWhXp5M3fYuGCbybziTExWk69sauYkgHdlg=;
	h=To:Subject:From:Date:From;
	b=VqBv0nif82jGmYsdwUDgwMqTFnFFCtvA0ac+aa5FyGv4CtLJt3z/8xyrciZ9Ju0+p
	 FA5m8pbdMVldGcA9uGJ0DFDI/6jmexno+UTlR/nDzmPmkfrAG80Z6jlk3puo8pPOnq
	 daGmyLzMJQIZp0rB8KyxcJeTwgK9NOKA0IewBfPTTEhUOXss05n8ugJl/5Phl3d2Q4
	 dXgsd+1vjnAMchmeQ+eC0zD4iK1UYX56/d9r6nmaACJVIoMbUaUtbhyKkj5e1237wN
	 1krRDsFq+NyF9nMlNaiJrAzA0HpuWdeQeq/lRyAmbFzG89O6KIYCjNu5ap7YBR8KwN
	 fZqozeSXgs3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCD4CDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750782870.6403.18392274174668116719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedd4ee0cbb58036812d692d71d8116f896436141e7bf37972fc19b7eb5961ba
Date: Tue, 17 Oct 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697507828
