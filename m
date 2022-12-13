Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C773B5CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789B8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670948487;
	bh=VgIFMPhA9mtUGQZLS8uQgW6qZSpNsbshMSj6VhU+6bo=;
	h=To:Subject:From:Date:From;
	b=ZWZQuDCOLAJ+UJK6trUm1wAlZAc4dTwq4LzpReLGYEB74PGwIMxDb9H3xHjSfqh30
	 kiRQcllM0Qh7WoIOKoa/R8O3lMqvp5r3EMzDUwuqRZfMn6wX+AIerTPOTbLKCNFmPl
	 xt/Gk0CKa64mxEP0PZEQO11qNHNoegajj0FBUkjKBsI522AvYd57cNqOTowJcllBgU
	 O5iWFfXANYPAuP7I9utszi5TIbN45V9pEXiYDFtqM0cicPJ9SvRZu6mgHJO46jxesc
	 zVKuVqRnq3svAJvOZ4JdAmQxFRhG0FTSTFrsFdJd8TXEn3x4K5KfBDl+StpMBHHCm2
	 bUlifhhs3WVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C5DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094848738.1933.12383077114243993878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c46d5bffd9d41c5426c6f1a3a7d1db6948ea511566a8a71ade5470e3c6ec68
Date: Tue, 13 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670948487
