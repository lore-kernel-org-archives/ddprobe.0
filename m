Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC32194
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E45C433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668797454;
	bh=9iHa/Ee90lEQIk2z6BZEHFGuEKTlDZKdRQd9vpEnmGk=;
	h=To:Subject:From:Date:From;
	b=kpEeLIqOIP49Lrnzj3fdGuUxAVVKyKfjthrGKn9lb8nffuwJE7+TyMBeDiUMWkqwY
	 0yHW5Yj0bpSPCTN0uwq9bci4fXALWyQfMln79bDcFuwRXKQxvWaHmch3q7nHcxWG8r
	 t8RY28UoStGYH5fvjzXaRaY8ZHqVEbmfmjqyXBmQKUPuFCV1o2mv834EMd4aH1SgP3
	 qD4y0d0Cb5LH1EpA6x7oX3sHaiTluAyK45Ydq0LW34OInPkt2GwbcL1r42DRm9HkQB
	 XUuG7/0G3q9eBwlmqLPzcJ+N8OCtyvFCEH08zsOREpda2QrzV+4X61jxEi4RqXPbjo
	 m2vZiZTSoyzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BC6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879745434.22731.112393746798902498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1104ae1b4533556ead8552ced11b4f94ed76c30d8d134a4290fd40580f40d8cd
Date: Fri, 18 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668797454
