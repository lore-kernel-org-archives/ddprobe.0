Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB66332EC5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784417914; cv=none; b=Uu59nxk4hbGAhHoFOqwxNwUPyCc8luEapKW9pxTKaorXfEQ5H8qhtwwi31tJIAa7yzqnwtrISwZ1KwR4D1ftl7hTZQ39CAHD4ao9KDajMrrtxQkMHsFdPqAkn/js9RfXHwOxjPXeqtqoOZhC7ysyDf1cT7fjAVcmydJD6N+sqVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784417914; c=relaxed/simple;
	bh=yRrp2jA7PxEa+GDk8R5BeUYvwLjL6yL3IcnoPAuMW8E=;
	h=To:Subject:From:Message-Id:Date; b=s3t2ky3z9FSpqUGeaeVxQTYUN90jKn8Nd0JqgbL1FM5KaHeepDkyBFUziVeiAPivQbtOAqlC6aZgiZeolOezdO8flXEWY0HrZDSVzCo4D5JQa/rJBEkUV6BPk1jMjR3Ctyv8+w+WkbNEq4ldX29X3QZ6Gby4I7h8GRLIZLD7dIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibqm3iyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibqm3iyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCEBC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784417913;
	bh=yRrp2jA7PxEa+GDk8R5BeUYvwLjL6yL3IcnoPAuMW8E=;
	h=To:Subject:From:Date:From;
	b=ibqm3iykSEAci1cOgwfxLAGb1xC1ern43L2VnDJ+KgIPOHIVRFuA6y4uuK4dNnqvH
	 /bJMxIlzmrtqtKn+uEaE0Lr/uaXl7G3s9lr6Q4T8LrCjXnfN/qL2C9KoepWc9lloZA
	 dzA6z8QGT+LpciN4RQFrhPotyhcoOC8OxIfb9hl22BybdXcV6tB46OnDCdY1NK/vw2
	 5QEfr9hTmKSyBzTqP8bvTx8Hi1Hb7Ytd52CWPRSWthtyxH57zabik2hM5btWCPyC2d
	 LoNB5M/4x+UQlvLNxLRoPL3xQ/J6RmzRf8EwmUrnsmsjYkZlzHh0O3tFRZ8GbYNdAP
	 v7BOpLlGGO1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981CC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441791368.28715.2969053340395440935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8668f7cf628e0c2bf70099075af692ac7ba56646255c47cb78cb305859243ced
Date: Sat, 18 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784417913
