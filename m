Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18082340401
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779196234; cv=none; b=B80smVSMTw1oFqKANDjz57/rSZxhA0jVNrQvbnSDlIZPVxG8z8wtOiUC+mP3tSQqByPrW/UvRo5bSAXU9t8wGixHppIqRs58DFnjzclOjJ9mPyii9KKggDEihVPi1hPA9xQN36jMu35TeAoKTZkWCoO43A5EnVTtfnvd4vhoK2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779196234; c=relaxed/simple;
	bh=vo4SxGiCI8t+Cm97EDtrhIXVpZ7jUMiITE1pvmlSh3Q=;
	h=To:Subject:From:Message-Id:Date; b=i9fCQZT0GpkRRkyQRjTOiqgqokEvSIII62b1Xw21hP/fST2dXJwVCkmWgTgZi3gY3FexNSEMKDY5bhYqCr2eF4ufHqEqIIdR7dyTgcNDcvVBDZ9ER/Nms+L+9nU4JSG85G8LBOG/nVRihttPYpt1I3M4IffkCT63/JmkaUw1KR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byIvA6m3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byIvA6m3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA833C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779196233;
	bh=vo4SxGiCI8t+Cm97EDtrhIXVpZ7jUMiITE1pvmlSh3Q=;
	h=To:Subject:From:Date:From;
	b=byIvA6m30O9oIY5uKtgXxHXnY3JIK3MXh0BOr1PL13LDDwyMbUC/W6ZkcHn6s1Tkc
	 9t2xNr1BWuOsXW/gh2dBT4d9x5fIGd9Uyk2kKWBrSrRc3eNdSX2X/M3hgPKbm9DCFE
	 xz9LcjyFizHEYZV+axlQ3ycUWRhXhpd/FAaDM5wU70WnXL9rC0lMnHaxn+tUBzSKlw
	 +y2bq24HbYhBt7lkPGf9hh4hu0vOk+MbnAyqC2MYgsYeNNgJqsZ/5bgTpONkqW9bNv
	 /xI8Tj+YhXngcxXzw4jCF5hNuz19tCaNGYM8fIjOmuqDT1s4tmB4UVeEkah+9DyqrG
	 EnTeTpK7HDFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A1CD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919623369.8190.7788357271301005708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5089342e0267c606545c237167bb661545f05b7449e687c748304985f0147900
Date: Tue, 19 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779196233
