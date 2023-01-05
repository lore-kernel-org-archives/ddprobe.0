Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F59A32
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CA9C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672936287;
	bh=Kqwkk2QIW6PuESWza5T18bDAGtJBV/XpcKo8kT/6GZE=;
	h=To:Subject:From:Date:From;
	b=LDusK+CcKAOZI1u9Xq1N47gjLle55s6TIaevhME28HRc+ZDwWOM0OVupocP5/xhwB
	 Iiw5xOdu9vMKHIMZNxTvDEr1ZvW/fLvVs1wSAIwLZkE5Eg6GOIvJxxqqT8CWRu7b5X
	 NaeG8mdmqUt54XQcvFD2qMpvSeqVAIjnPpbjKXmwaNxr9WdJvEpr5y8WUUyv9ynVpw
	 +hl1vFXh23YHIUXCERjKgVxlGx9KwYUj7wRZnX8i7yFob7BcHBz/UsP02B8kgbWILw
	 lVINiwsWWYDONcYWFPV9nEwOdy5AzhmzR8F63XEjycANL8Xl8Lu2/oeEyJndDKZ38V
	 K9An0DHTHswBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64460C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293628740.22674.7631987270839538469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6dd4fe2ccf962c2695815162f895991c9717a54de2b4dbf76f7d92a50fa795
Date: Thu, 05 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672936287
