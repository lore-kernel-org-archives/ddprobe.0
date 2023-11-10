Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0520E4
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1AYA1dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBA1C433CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699595296;
	bh=ay5x+sCO8vp4MiYMk03LYXzCUuAS7SSSvdYliycM7go=;
	h=To:Subject:From:Date:From;
	b=R1AYA1dywYU0EWkMpV7N+CWgUpKU82Vlh/fzrguxG9Eavuf//JPFJZoGI2z2nUHth
	 2XQOaSo6JVfiMzdyJfUETv6xjYbEummNu0HrWvGT8b+cPEo94GQObun/6NApxCH3ZM
	 FFXGPmoKYtfVXagh3aEy+bCHGCcj4zoDeYC/T1AgiwaebBMjTPC657oLg0fL/1NVGf
	 4fsnGfhttcjS2QYAzJModDhkITFbgxLFTKW8SRDS+Ar5nNvbd5Lxm1qFRWd5na7JKZ
	 0Qto1JOxKsLwtU9Iohl+2Jw1HlcRHJU+BBQJno9/OWc+iw1EPUET4ag5uMI9OF+j6J
	 U876Y7B3Zl8Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F437C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169959529642.6295.13683924444168226241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac75439bd9ff614eea1f7f25c501c4ef6413933ac489b5c992829fdd9c18277c
Date: Fri, 10 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699595296
