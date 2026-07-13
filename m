Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C315687D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783958914; cv=none; b=Vc+rScym+/nb2LdR6gI7d8ABwqCCVkB6N8j1iTui233CzR0cqsAr+RaoQ3z3rN2o387fIu5Dn6UmT2NMtMmOgV7sEWW7P7sPyv3vhEInPAksr8RDdl6f2MyxuQt4lZ7MLBcbe4WLZHeVuUuALkw9Q6NgGWltHehyztPb/Z0LZyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783958914; c=relaxed/simple;
	bh=gCqeINNPhICXKe0ykwZdPh6ZDLNDFg+e0wF2hVqwRwc=;
	h=To:Subject:From:Message-Id:Date; b=N+dYREHe5aZU5Uu6aUWphmmeVHd+eYAT6pVGsOhdYqwEmM37kifm1KG3BWpxf6JOIJUpp9z7ZJdNTghdIPBi/gbGh5d6VZ0TLLp5q9ZVOVO8P6IbRK0Mx/u+J0FsDsXo9L9yoAbHHjcRCZ1QzsaIJ90TKFBNpAfyZBB/Y9S6dWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7XMSt0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7XMSt0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF28BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783958913;
	bh=gCqeINNPhICXKe0ykwZdPh6ZDLNDFg+e0wF2hVqwRwc=;
	h=To:Subject:From:Date:From;
	b=L7XMSt0innvL6hRkHC6pWUzTKl9LGP9yN9CpxVpi8hy+D+lvm8iia5kD2gf196pR3
	 vRZ5O8W6RwCKuWZp+pUXrLMgvcO/oFPLceCX7s0Ihi25g3biUosifXfQmyUmcKt3L1
	 a6isD0oIWUXcQTgaH9S9w9asTDjKTX5R3I9by7SCE8UtbED2NX2Eo7YUIUckeOP19S
	 iOX0aVq1rkbWSYUTHxb+BGGmWI2PUFY+FEcHwI5rwgxdGS97IKGpTFrTGWfJAUOpFI
	 HxYVfvsITsXJI2mVM1D5PBN1kJIYhTL2PQWMQw+1lrJXrP4E050PMU82lc8+BwtOWp
	 fawS4mEZfAzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9EC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395891368.32460.6740806515550262208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c58ca16f7634a0b4993a94025460434c29bede2e0394ee845bdaae743227d6
Date: Mon, 13 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783958913
