Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9DA3205
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22C67C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680478566;
	bh=hetAPhoUoZAW7eJ1M/jvp2M5QW8B1am+HbqKMB/Kpd0=;
	h=To:Subject:From:Date:From;
	b=FhY3Hy9QTfvKvMvEqtfmtgf3dlmDjG54vzXDn3SUry5d+0v1WJGNWdkne5qwi0Ueq
	 webeuHjC3Kd9tCWqxWSS/yrxCV+zcNJ/VxjlB3xq07gEC78g7G4E2mn6aWPTcLqH/B
	 OMuIbk59BqvjM9BQS39gxKMYPWPAaT90FeXU4nkIa0woCHPiRJjn12fnggBcXeUMl6
	 09aM0IMDYi73tiUZvDDjDdEseZzVueDtQZt+WnwiSC5a/gUAy0z6O6F5r9NEw7pXfR
	 tOzkWEj/twvn0TB7SzAiBAVfUwbWY2BVNKiJo3J+wPGcvgk88EzNKFAF6elLAFgMD9
	 dNVYlpFnfNQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02E08C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168047856597.12771.6927195285607203336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cbc0a0191419e6360fed1754a795fe7317f2fcdb9443dab096dd0d0df6d1f2
Date: Sun, 02 Apr 2023 23:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680478565
