Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AF41D47BD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736894753; cv=none; b=N8VMLjRCV26MageF/7PyEGkdor1OdfK3h52/mLXVRQaQeWWm2LUWw5c3kseJ+4VLc4ThKRNyMenaMaQ5sYi/JVLxefG351AG7nbw1j7L9eTGwEUA0/HZWzVk5qIczWB0+DmtIah7LEmaj9svN+C3o4L397BG+zvAZoVaWbAPQSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736894753; c=relaxed/simple;
	bh=Nh4q6Wbm1lV6R+QWv6WEDACIjvb01i+mwHcu0d3DQIA=;
	h=To:Subject:From:Message-Id:Date; b=apmOkITGKprTUl2ltyn6G1eiS87QepSV0e9VJB/OweAVXIU4bwD6BVhosyQkOxWif//omrLcDXRjovYdTBbEQRW55BVyc7wZD3ObGLUfRWS0vuvA1Wx3xcvxobhE6qcKL4FsJNRsWkUJvXPEEZ+Vtfu4k8+1N8LEQJ6PI2w/EDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/Ey9UNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/Ey9UNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D86C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736894753;
	bh=Nh4q6Wbm1lV6R+QWv6WEDACIjvb01i+mwHcu0d3DQIA=;
	h=To:Subject:From:Date:From;
	b=A/Ey9UNhlVh7PfcsWjqX10LtnvdTqSc/d7Aa+2tPMlhYgV1QkliLx0BIHtj4D/lrN
	 k++6j2Su2LvJ6LNieDyEzu9/pulj8npuw2ifeoU2PWX52CMpgKWVRzwO6JlRHz4BlF
	 UPE+nJwsgDBkpK/xd95vu4SNZmLra3q1AGcsIkd/+pWMP5KZUZSzIVCGqFOpdg+k6I
	 5CU6U8vzNGe6RDG/rGteYkx6EqzHB3P9iIl5nb72jjwV5E7RTUvHaQn0G+y3jSdhCb
	 FWbPJ8hrpzg9bH6whnwo3tO9VfgJhRrP7fm1KvHSQHkdFA8UNMdakE4EMIRHXPmDG5
	 UXPsmq6Kgwe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC2E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689475360.3732.1152503384030600545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a834f7d808a01a685f8cd1729e5c2506be288d83b5df18bc343c856254dc7549
Date: Tue, 14 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736894753
