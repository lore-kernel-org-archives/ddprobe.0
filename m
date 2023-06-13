Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD55361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA94C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686636966;
	bh=xVN5k2la3AnmxXlFSzhdZ65ViE6llbBcZ++iZ3kUS+M=;
	h=To:Subject:From:Date:From;
	b=B8s2lH4JtE2cHcRCBHHeC+Kpxygtpy2bLuFRUtFjywgHt06JbdogmgPldl0ozBDLL
	 TcFh5f91FeLoKbvYudlTcmde6L3VN3kjP1IE+ZCP3J1I9IaKlkcLUB8vPf5xZKggEd
	 ZUd1xKATjwh8D9+ARWUnhdHRbknAs8ZG0vTD7sl4lu9SDWlm363fmKAYUd8w5YfWqC
	 Hxhu5lzKW+T2T/Z7hF4/eDYUHaADZhXZ/th8EiHC0YJYPooqQZb2cqXsziMqNCdOQp
	 TA8L/j9q0HIDotFMVtyZpckWHwaD4/AsdsHompWLHAJg/3NjK0YxRtVX++dalbD+pp
	 jKIuBlC01YQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA4CC7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663696576.12878.1047949064943621051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cebecb569c904ef5ceec908747beb5df4cd70ec9b56df44db86e94021dcb447
Date: Tue, 13 Jun 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686636965
