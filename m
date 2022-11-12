Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F5163C4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9298DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668276654;
	bh=bpWEL2bFO3n9EQxcNG5Y2wPuEHDGr9GXNnLCCHEXCY8=;
	h=To:Subject:From:Date:From;
	b=CGYvgfqwFvwB0UdYnxE0XXaeXde2x0+wSL9LMCQHHgBt1v2xgp+7Rtaffy8YWjfAL
	 J+WcSVhEho2kqBxbdzWDp4KKYZGJwAJc38Q//ZfZJxBTCYO1FeVixie+cR7rZmunbT
	 MN0YI1Z2rG8ln5PIlAwx0OtP4NbP8r9136fxqu6olFCVH8g4OQyDU7/v+H5betxqZX
	 4D9NlLUQMgvNOFnJnke/02476tJGHtzdMAmHD0gKFtlgncgQQfbbKtBr3vY35DGOIP
	 Iz2cptNcUnnPYblktIhzDN2jn0XllWg9NqKvXca0/TYfNwe0mSYBgtgoZMZ6fQccr4
	 mO5rfX9t6t2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827665444.22158.1931719542759297962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90968fca6dc96a6b010f191be8092a7c0f3c02c55a5a04f90214140d46b80228
Date: Sat, 12 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668276654
