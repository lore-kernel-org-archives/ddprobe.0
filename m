Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C30D468A
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5001C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678631225;
	bh=cdtXfevh/cNUduPE+X4c/E0YWJtyYXkMlN6kCIHtTH0=;
	h=To:Subject:From:Date:From;
	b=L05p3j7Px6v4la5wC7YcZoIoBmJZojZAlqYoNWX/pCNdSdmRx41hDqDRfHbuXdMTH
	 Ng5NtBk2wNKZT6rbDOevFPN8OvbBk4J1968pSIITWOncUvtaz1prJAczd5hrRvO+3b
	 +qfVDvPlJ2pJ71ZFHdqrZcEuk+g4rsGVKRxUGdHoeepxaYxAVXzlO3HKtQZMhgqZCZ
	 uyqyHthh7e/PxflbHgpCxVWp/ChA9L8TXYajEn/TW461aEUXqEX11Rxm1+cOcKvWqW
	 PJYQ1fkqpXRbAEaS9RQqr05LEqPpOH8BpDxCqCn1votKuVTbxpurbvbD2YS7bOvdJC
	 L0AaAsUz901og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9857C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863122575.5204.11982894938218017388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a6f3f9da0545b503b96993ab60e07c3ca55901f1219b0b3c78be099c84b27
Date: Sun, 12 Mar 2023 14:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678631225
