Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2D4C2EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED788C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680979266;
	bh=R/Sond232BLJe708ERltmxXLJmInvfA7chK3Qz5dZI0=;
	h=To:Subject:From:Date:From;
	b=ExMlBlpyekjn5NKlmnAYLS2SRjXzHTqFtZfnGhgjoBTOLro60GTBSpU3AQs+Vr8hg
	 Wpcck897Xnm0OvJ85uCYiqh0z2oxGosTHLci5HIsljpCd5OUPzvwIq1RK6n3HG8k3E
	 rMprynIEvgpQwZIyYslp3/c9w0X83pSirdzjh0H358CRTftzx/b3ShE2rV3EfX4BeH
	 6Z1U2wT3XCtmkP53M42RHNk+1FM87FLrOjN7KyEhOkMY9n3eil+Wt2pCAieEiIB3d9
	 4KwQvzrbKSlJVEZQhrVxr98N7fEn8/GPECqRxe8ME9zDjpLve+r1wxnjeWFLI/dbEN
	 4pPYtVaWRCBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C304DC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097926577.7792.246816352141179508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7963128fb50fffeaea77713edde8dda149c194f05317cc70a84fadfd4bf5be3
Date: Sat, 08 Apr 2023 18:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680979265
