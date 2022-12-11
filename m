Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D326E10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C60C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670721687;
	bh=Al3xIgHs2xrzwrr++MTyFV3Bi+M0H7EguvNxL67xfM4=;
	h=To:Subject:From:Date:From;
	b=YmzIdL9kJyQzaHquwCk4y24M8dF0DlpHm/KNf2csIRFZzzTevIpfFkPlVRK3wBNkt
	 FRmaRs1/omV3lC92ahS+Y2QDMrkdS9vkFqXNAv3AvrkkjssQjFkn9blYpWML8VGguF
	 pZxyQNCqMHehknngVEx+BfHJ+EG7S79/9uJ49bGP81tsgCbO7l03lpzpiAYe/qKXVr
	 jpMNy5W8+VZXoyHUHu52qaJvxRU0TJqHNrBezQYkIGryIrU72+W6vUMHcD3OoRTlUZ
	 yU0bdpPKw4nTQLINEseFMm4LMT+plg7qF5qoALG8Z9+j5qpb8SlkrQ5MCpg38A1t5I
	 WVJr0/ku4ZYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70178C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072168745.14627.4145325881833828114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d9e9cccb0e56160110b9a2f9f4d2e0f0d89b166cf8ebf05cf5590e1fcdd1c1
Date: Sun, 11 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670721687
