Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FB62DB780
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774159494; cv=none; b=bJLInK3cJ5jBZFbec0TwXcUck1OZfjBDeXV+U4CEWhYLJl3KHX4Q20O11EI0UZqi6L9YXU7g9ZzwTNCHbkeMkeSt0/SRNaW/kB9TEDcy6Lp9YRLq021z3/qgWmZnlHEcJ6deTtUy+liwy14bFuuZ8JSQS5SEHmu1TBHbqePhy8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774159494; c=relaxed/simple;
	bh=twGhCFT+dqVo6+DKmddWTp/s8/T3GD9q0qKYnDliyBE=;
	h=To:Subject:From:Message-Id:Date; b=qoJXS6qvDd+7bMlljewWMPkeAHa26JNpC9MlHT9aW2NhZ2691Rqz5+sjH1NX50ZmcjNnw+SsBPKb2i2QDR6rVakEepZQJTcJ2awEg6rRMa/+cwvCByvmkriivUqgI6GIN3r9dJsqx7SdiqICJfZbdOVmzCVWsGzqc/dBWv8OSqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOKWGEpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOKWGEpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1794C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774159493;
	bh=twGhCFT+dqVo6+DKmddWTp/s8/T3GD9q0qKYnDliyBE=;
	h=To:Subject:From:Date:From;
	b=UOKWGEpajjC/xcK0sRFrODvCt5V9zP7LXJmp7pBXiYaWHmK8uWstpPxiWbj53Bv2v
	 5qIwM42RZMp/P2LQ2SVyXifJwim9ytKE9t2A1dztInRYOOTPWKPtZQZR9y6HLZKQ6P
	 Wom7MX3zbqpJDFQazDeicBTrwqKufNQWJG81b9OwUfEdTgSKmZKsuhSKVJkvRMfBL2
	 x7sR4wumwwdSR6OKYu4nSsK52+mUiR55GJTLB5e6rEFms6AYz7VCglFhUgh4vxaJMG
	 UUSjddFz/dPk17jaKq6HHdhsAwB6KHaQCjSUBbRDm+W69gZ4qx2H8/HWChf6n3Lda6
	 ND2i0BU93HLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE08FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415949357.32585.9913256454605267886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601ea46bb420b36b66fc32ce95b455f0995acf4bb118180b42aa8d53772d64b0
Date: Sun, 22 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774159493
