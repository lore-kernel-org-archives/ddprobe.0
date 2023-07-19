Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C21800
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 16:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CC7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689785528;
	bh=4GsSyQV6/To/iClFXJajZnJI26LuU/Q0d9t4XkXdLz8=;
	h=To:Subject:From:Date:From;
	b=fxE6uB62pHdG91gVR0rJyfpwrTeN0fRkfgj0m/Wt1D20ip4igikNuJh7xFBsQhA9P
	 WfQpEnWodUkqNVhexNXCEpeZ4eyGZFX2+iqBKw88csj89Ljd7+RnPmJfftVrSaisRx
	 kyUjwIh5DcRHZgWVRqtC4RHT4iscANarEDRimlUUtnJxs9JVVFbkfjtMu0rDeoYLmc
	 GHGfHAHgW5/sPPulIvKylb0HzzW0QWfvc8mwv2Evyc/PTvE1s8fMbOVaGTJd+Dqvt6
	 ln52ahSvumjG+xwZl5qhlP1H8hd1geQgvmbnnPkLgaBpxYE+aWsnX+T2OXoMAoQI28
	 GkMS4Qh3LqKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3FCC001DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168978552869.17563.8750017117782348964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad183734aab0e0392bcbfbb99e69983ae7b56326760bbce77fda379ed56d850
Date: Wed, 19 Jul 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689785528
