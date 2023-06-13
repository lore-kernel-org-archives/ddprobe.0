Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52724136A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CF4C433C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686688028;
	bh=hjC4Hko45nAhAHKjrTG7fqQS2+hHZea4Q76Etk8DMw4=;
	h=To:Subject:From:Date:From;
	b=WNccTcsDW2e8X8AqnloFenQZSF6fik+DzZvFRKexsOV1yQMq0lZbvSox6LP5z1dcr
	 wn+id2460k+lrmcChmqL2kotS9bdW/ypLUKvbyrnozqKoTts2OxqDyBxnvNe3Wy3fH
	 W6W8JQBLrPqDfsGR10XA7Qaem14G5vPjMskW+lYiy1+H7KnaAtvoFGp2safpzd9k96
	 aq+UKMUJfqzbVvBTiqL7aeuad3fGidRAp256PID9tqHL7isYSJOUhAmsFqrPRrpKjJ
	 UabWuF5WmiWrgQT/D0Scay3xVDZCCj+2YSK77asfxiDcsr53mPtHszo+UA5yhmntV2
	 k8xMeYKEwWr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6262EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668802873.12234.12431031000863188098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79917411c17db51050da158092e33e62e6d8295db2153f3d36084ec516ccfdbd
Date: Tue, 13 Jun 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686688028
