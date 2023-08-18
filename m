Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A1182B5
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0424C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692375248;
	bh=XB5vc8nwKzyhhHyKjOlceJOCmQn7CP5Qe87d82urb3U=;
	h=To:Subject:From:Date:From;
	b=IDTadqS9z8WW7P0Em5iV581lX5MxfNIP7OHIOnt812R8i7VvzoBcEtEYNo3Bd6Crj
	 H3lZf9vqGYlT6tYda7R2NP9Il0rB5IGrlie1qvlLxkDTyAyvZUad3NyW4p2YGg+khP
	 suwzk+zC8lXxAx+ZtQQUVYtdGiwWM27Fji8Vh2WIaoxJimR4W6b6YwAAg2gfoF1JI/
	 Xd3B4FIACkMTs3l+rjzxWepknUo8y4W2lH/ul92TiIQT0N7faXWtB91MmS6HMIkoSn
	 QLnNcB+vyokqAHiHhAC6OVGlO8uYKtOOKMb/tedEZ95MBaiYBrlzyh3uNhb3LkA5DD
	 BlA8UMlKkzIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DA1C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237524872.6297.16639188175246206208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b596eb7668fc40e0ee6cec9b683e042f9b5e79e11f77bd1f491448853385d7a
Date: Fri, 18 Aug 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692375248
