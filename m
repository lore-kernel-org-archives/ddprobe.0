Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BCA2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8622BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670784087;
	bh=KkI1rx1uwBTgPxBkNZR2uA6SZVNC1Bw8fOTJrxwVcus=;
	h=To:Subject:From:Date:From;
	b=B5M5wb7BNCQQEOvUon8OdBz+03t0MfTIar30uGG/f1avyf06QmgX2Mue6EwucWdUq
	 NXk233YMogHkLDfONEHiXJIWafbPZYw4tuDrz1wLAD0kti0DDNSmu4R86jXji1X1gR
	 vh+BPQDbV64nHDT7CKSvdUdQSlAe6/dyrSYhYE+7B+mriovkxpsB2SfDrAUwA/HTi5
	 ENSVPOqGVhZ/wLW8EYgbuINvLMAAol7fHfObjgunr1Jgy5MTCR7uHQaXwNPcpTAlpd
	 DSCDy5ejThdE7wg0NnUmi751nYVhBm+lV+HHz2In1K423D7spXNpR44CsQ0SG9pmm6
	 jlkjTdMJmjhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683CDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078408739.10340.14218907397185360269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8535cf3bc2bbc32a964ec7bfe71fab6aad339eaafa2c088feb20f9fa45ec5b8
Date: Sun, 11 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670784087
