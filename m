Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2081D361DDC
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777210654; cv=none; b=dqB+o1ar2ESbbBCpa7S0BiQCdg3skujwcubwqVDpXiduXD6Zq3HjG3N1CeJWS+UzuULJyQofjQl4tBITFyU/F927qMOkjypd6sompaeAOUpLiypWZMgLCrLMJr1eR0ZlNQ8KbrgMZzqGpN/F9bgaY2VYDw3TJvzUzUX6zsAQxWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777210654; c=relaxed/simple;
	bh=WnYXxpkK7oKYITdJNdfjM8tjGb+sIHJE2s1dpy6Zu2A=;
	h=To:Subject:From:Message-Id:Date; b=YLsLSJVxekxWuitAbFCMS41vA3FPX1XCRHNG1l2C9s1+mXrDjMhDyDHH3pwoexyJpnDmXmqQuAZurlwm6enz2BCyp15zJnKggd9dFY/0i5tyh8EyoG+pGpdJVFiljEq8odRs7V2VgTIC4PGpl178gpwVEsyz7EIQ+0v9RtMwb/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsIDJY2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsIDJY2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777210653;
	bh=WnYXxpkK7oKYITdJNdfjM8tjGb+sIHJE2s1dpy6Zu2A=;
	h=To:Subject:From:Date:From;
	b=YsIDJY2unk7ZjB7qRFpoi8uLAA/yN1rhqUYplqUphYHlCCTgQp8123BHYxGy3LRt1
	 PXM1rHXKsW4Ty+khx493eBMaJ16MoKf+q34jMH5CujerwkTCZpDrdcxyvZn8hr9PVa
	 JIN6RoBF81ljeOnL6/rxqXWI7ugwMimf9jSZN/GfjwGvAtA9Qwt0cgyAfMPQDcAU5C
	 TV/PL2636OUe+LWgdkS7sVFg6IGuTHztW374P50wcdqVt+GENaOj11xMM5EBA00aRA
	 TsN6Sw9iZgsXXu4ycnXhJaxG7bAOAdCGx1eFdqk+FV9PHsyZ6/A7ZE95Ewd4Zs26w6
	 /iDy7gZMuN32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF13BFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721065368.5949.12152541748586559710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f93a2b890aaa3bce4ff78e5bd6129db6d4d817e5074b77eca358c6adf38946f
Date: Sun, 26 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777210653
