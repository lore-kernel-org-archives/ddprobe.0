Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68805627
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 01:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FA0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692582848;
	bh=7D00LkWMh1sJ4qOrACuhaW+kGnkYtcFjoK/heNDjAlQ=;
	h=To:Subject:From:Date:From;
	b=M8pxjqvJdkGVjl98b6x+ncSX7lXZI6I9IBo2KF+88XXQnXOJEXEiHUFhTKlLqKdem
	 i/rKa194XcwAKY4pZnuraCsp3SSdpKoiX4MnY8s+z0GjnNXlkTsxtwvwQGj30ytw++
	 k7fHR4lj5FvFP87qJQhhFESilwFIVJ5rc4DbLEB9o16iR26n69kUnMlcU3/iFQu0nL
	 dw3Ty4OKTef1I89fUr6MbapyD1PVv2WMLKTIm7yCX2Is3o0Zn6VW+w2XpdGhGknTY0
	 smTMf1tVXKOo7X54lr6v8MepHWGUQOgwE1UH7Fg/D5+9Dd7Phr0hA9sBldw4+PhdbZ
	 +1fl2k/8ngEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A764AEE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169258284867.15443.3903316826578573470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305549432791334e9817c129f27f231f89b5a9d3708ffb78c3c0ba21b717b260
Date: Mon, 21 Aug 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692582848
