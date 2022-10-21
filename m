Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D3F7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7769DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666322453;
	bh=lLrj98lvsTH3E5+riOBeF45DoZ30RaB/qXGafZCrJRM=;
	h=To:Subject:From:Date:From;
	b=QPVqNXJdWSKwpBDxRDop8KXwJxCI+V3sOIsPxJFh0D9Hh63S/Yv6LYLjDWGlm/Z+r
	 oAKKmP7EFUX7sqr1WpgO7vPf+Z+iuCoTs27EaE0qC9haAKNpvcdBA7uYNP88ju6d3C
	 /qnlI5p2z0fmCCoS+VR6n3V0zzwo7O7KXAXo0jKfYsGFh1FIBrGks+LkBlPzsWW3pL
	 /wPdIa8b4d1g5qy7qEmU4bjFeFpiFg4oqfDhqPAJHtORsXSHUuCVxv9v2s8yoyILwo
	 aZcvI0ZsEU4iVOtzRtjvKFRDR6lvdPxx5LTqH9WRxKD038s0u/H6hlQKIbVfN4mv7h
	 5NXdsDEI14xjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C10C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632245334.2605.10885726448345997130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f64830b2630d34e4d0c9fa1d5e43b5d813fb65a8728dfbf4baf6e4b4c37204d
Date: Fri, 21 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666322453
