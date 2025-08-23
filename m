Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208C11482E8
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755982794; cv=none; b=JSWuBWo6/Kzozfx5FP6WBpamJF1n0FEFbHto50T5kIiNa1oPZUu4FbbD0H18h+ayzCV7kp+Er0gI0ZIs46ZV3cqDLEmVZRRytCQNJOTQ08oBJa2qexpUNyi087QUKbeY9P+LCoFAXqAOoFlsv7+G6mxDMSpxrRoqnBTOTmkorvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755982794; c=relaxed/simple;
	bh=m/lCBNysaHnrW6x/aiLXLNVvIn0gDUEmfB3DqG3t14E=;
	h=To:Subject:From:Message-Id:Date; b=P3f/jckFFuetElwxdDxk5cyJI2bZTHxwezpsh0O/0x38Z4+LsK2vjCdhk608zTLKgjl44FOYkK8CVAVYr4+bpUDn0JaHoE39QHsQq/BUCwyqcZOMdZ/QW7Qf3rjIXcAemcmZTizC2GttjZBG1N+jJhIAfypwdeffrDeviX2SfOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/kztnSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/kztnSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EE0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755982793;
	bh=m/lCBNysaHnrW6x/aiLXLNVvIn0gDUEmfB3DqG3t14E=;
	h=To:Subject:From:Date:From;
	b=m/kztnSR/5Ml0AebRu6wV3aXepvlf+iwUqxyVrmwUGIbnPgmd65BfbgMfAYPeJDRs
	 Z7O9Tbv7f5eEkwB8c2C0T3RagL3D5N+xpqWUVe1sLr4fR5YgGho+ZXnJ3Ry3Iq3wY5
	 H6RO291TpXpvMtO7bRaocG2bHs1akDZRfI4BVEeAd/1J8/rqxiBpOSfL505XJVspe9
	 UcCWmemjkVkKwCpS8Nl6DvGGDiY8kjBV8MCuG3t5qo7iUtgj+j7QX2H00X447ZWcpo
	 4/Be8ymJwXZeXNlIYCqy6fjDiR4OCYFM20IYQvgk2owy9xBnB1YX8+BUpYCqzuIFwG
	 SyjkOywFw30Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598279357.23922.6893940897101500735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89530c38ea5cbf24358eb4785d164a37f9726d356b1a1363d62256b38a5cc492
Date: Sat, 23 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755982793
