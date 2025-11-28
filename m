Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CA52D9EE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764333774; cv=none; b=iW+JdEJa6ibHXH+M8RkrA/WCuTRdFObMWDwL5n/vnd0470nrovUe4jiDVm1tyxNdeRpWmR8nrardU2mvOkzrVkNllu8r+2kGO0N8Prd0UjAV+ShsMtIgrMc8KQG1Bpxy7vJI6bEvMdu5pj1T9FgeHM+nSyAFoz3nIQ6/kN7Pfis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764333774; c=relaxed/simple;
	bh=b5Q1F0k0qBiGeLMpsh8PWXMvCPFIbeJyKS0ZE/LMq2E=;
	h=To:Subject:From:Message-Id:Date; b=d4pJCICJznMZw3wl8ZwcaCMIcMo8uPfdPxkGnQYXyG3hl5TZBqMZwnkkZCaPgI0RlI9OIER7IBNNpEfgjeI+7w/y+EfRyfqQS1hpHIv6qRAYb6ajOHRwm7UrtxBRhsPV09zfD0vgbcQJvr1TXKDwMyKiczU8Kmf81fSZYFaU+yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZJquCL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZJquCL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F1C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764333773;
	bh=b5Q1F0k0qBiGeLMpsh8PWXMvCPFIbeJyKS0ZE/LMq2E=;
	h=To:Subject:From:Date:From;
	b=EZJquCL0G1HoGxasFstvouUJ1tf/oHFjOvMjCLA7vkzM7dJfPnqxhWSqqIi26Ro9t
	 FXoxsHb+nY4lTktBT0/gaRJlCh8IPmO8l+IC7zhSIEhcU060WB/g+9u/lUHW5huDP7
	 kvek/XbUl+xvd162n/hOxEv5JIJscQG++pTYKjfOz0Z6mz8QMEt52ZvLOBycL3Qyyn
	 nTAIO8Cg0jUoCHWo2givhSDBIUqSINyS3i/DTVQADIXhhylKckUfAh1ur9zNYlq95B
	 lN50TQa0FUzt1Z0K2x1Fmip2g1dh5cMMAIyBzgePA+33X9Ki12Fy/ckURL5mSSfTMO
	 3SRsLfz5fYUCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E4D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433377358.27474.11093442227792799888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c0df4e441be9744deb238ebe01073eccdbda9e027abab7d679ce1826887a1d
Date: Fri, 28 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764333773
