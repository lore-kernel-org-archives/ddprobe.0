Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D82A57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CBAC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668955854;
	bh=xP1tVpGOJ7XgjG5SeAW4UIK66FfTvao+coOlHZjySf8=;
	h=To:Subject:From:Date:From;
	b=jKfFpFEOIyIlhPKBrr6p0QQsaFCF6Mf/IuubRe2l3zJZn2qnxqna1ZRb5+XwIDSui
	 NghGa6SDg44jZm+lGduzD/e8HnaUlkIdOmqbewCT1DhqmpM24s4dniltX2HbXjEZl9
	 29hTGy5/zL0Q32cQGbNteimXQjZ0BEMJWW5JKx2Q7iqQkePTpBGOLFjJVW9wKLxrG3
	 05cv3pxWLpm/jLy//gm+nTRs5QbVdovn8EcJtG/UsctQSbdoMoT8GB5dIDBmwjSnn5
	 aSviZRWLMSce3rJPA3nQBH8VYhZdgk6s0wg64fs73Ng3fAWoSjPm4RCZaE5DABsedk
	 eX32lwRNsKGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B3BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895585433.15235.17915843407071252204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd5a6f9a34a712bad67100f5f52c7fe3c1f68102e7a93fa53ca5992e987745b
Date: Sun, 20 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668955854
