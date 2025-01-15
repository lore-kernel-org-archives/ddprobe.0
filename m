Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2471A33DB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736958954; cv=none; b=dMHkL4Lf1BvD4v3q1N/9g7f23fJa/gEZTmMAjvW5G5mUg4PGqHnq8bSQXv28oSRh1/p7YguGqqaQEDNVzAMHkgBO/5TMjsFy0O2J0w/6xfGjpI+L8nFf6jRV0XrlZhKlzNMGFnzS1Tibfuy4WX7sPUd4BZw9ZbSdAD1ZLm9zK8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736958954; c=relaxed/simple;
	bh=ryJ/h4Yneome21OkXl0iEy4GRYVg7JHT7i5wNRKk2pI=;
	h=To:Subject:From:Message-Id:Date; b=PvGCnoIk4TaoA85HcV2PBTtqh3K8z0b+mVJ9yN1IV5JNyk5fVcdw/hhWObei8hr8uW6hG4cVqNsrEgjqbPxjYqyzIlPTCqF1GXDR5BOgzRuxMw6UQE1MV+gbR8n0R6TobPU+tSuCHGFWejzovySDz0yKAiCLieQ5iX49jkWbg8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3ix+hfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3ix+hfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB62C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736958953;
	bh=ryJ/h4Yneome21OkXl0iEy4GRYVg7JHT7i5wNRKk2pI=;
	h=To:Subject:From:Date:From;
	b=c3ix+hfsN30PNprY8dwjeGWc1Gaqarjz2xiflHGGEqIbbMZTbuMSaSbaBXUlN1DGY
	 Lg+sU8muqnXL8r1tfGjNsDl2JJ4Q8Ej3ejvni3YZQ0ROWxvg9gL641yFr6Dh2UUMss
	 08TC1OoJQx7hZy7ZfHOm9oOQ1civvjqRhwkpoVfDMVsBj6lNtL6/HrLmN1/N98rKgN
	 vT1cDbzZQTSBpkdca0mpyLZIhVpbN8uGpJdCPdrGnsRcHLgybdfvDSMZRvRytGjYvA
	 x0qHWaY8VrJu86vL7lLuUqLdth4hl/17xqtYxZ2stALVGq3TzWmSZgoFJyPk2bTxnc
	 r2lyLij2azfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393AC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695895359.16589.15708047379461805385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50675cc54532f03bf2758856ff4a916cd3233c7fd3eebd0e50dc8389dc600383
Date: Wed, 15 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736958953
