Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B35F241690
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734574; cv=none; b=AIAlNgoh57PcBIXe8PqrXqAasIOiOZRPawViuSNy6fW8mJvq5Wsm3YPbAJn9m7Hfqubdf2wV71MGkF+BF01CC8CX526EK2/6uaDz3+lJu+lZxLYPNjckWWnxZrA4xQF67xa6sibw4qIfFbTi43/k9JD17oCdE7UgvyFR/VxZuQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734574; c=relaxed/simple;
	bh=xQToJ8fYfjg/4XM5jZycyfuxBlN2yrXzLSIjkSidR7U=;
	h=To:Subject:From:Message-Id:Date; b=Y6EgM2eI0rHBrvhtry7eDg6Gob4xh13NrNBNzDOFyWXCT4qA0lFP9em+FRvZKYi81ttD/8brXNXlK2yo2vYGF026tDCQhGdGtXwQjh7YBdhCj4Rw+LoVWPmTuQWdD9AE7I9DkI6A69AEHEgp87ciTzE0ma5qbPejLntqfrVR1EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/RYUy2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/RYUy2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB82DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764734573;
	bh=xQToJ8fYfjg/4XM5jZycyfuxBlN2yrXzLSIjkSidR7U=;
	h=To:Subject:From:Date:From;
	b=h/RYUy2zOrRBSdZ3fU7+pc3BjCj3YS/XdxdzhYCe/wcAXItcdtuMthATcAAFSjFew
	 6XYlSMYStGJjShLWqxH3A+9TuCKRB/Occ9cW+Y42iGgjHul4vke6mjKuASg+Dlu+2W
	 9M6JXQno7b1cZFDnGeJ7cvqEammOXVAdtGfPoeQ0Xo/IoExCrQk+jDRHogWn9+7QyT
	 i6NLKOwAHb0bdcXKUx8vUZ5xZZKbAahNrXkU4GaNy2RV6DBxWicvQ5OtZA7h4dxqsn
	 G4M4g6xNGc/zOOKJ2Pu6+kiFmMRXxy6WFDMC4y203HQTtW1gJGAImiOA+BwM0FTJHA
	 Uyg1VXSiGu+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C0D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473457359.23842.5707763261061867453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb3798839a9a2016bf0eece0ceca88d0beec3fd2433907ccebd054d78ff8428
Date: Wed, 03 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764734573
