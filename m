Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC5F18B1C
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePlLravL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C352FC43391
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697098628;
	bh=nyoOqbFrHiVAw3f4qLdStGdb/VZctPuEKTPlw/5To/o=;
	h=To:Subject:From:Date:From;
	b=ePlLravL6CtQDAmzbu+x+z8FvSs+lbFodq7/w0MOKhxqi5IBq44i15mMVHkRbrRlU
	 xyNuh3+HWXdhEf5W8W3tMv5WUcXc2dz5Qj+aY9BUiWgANXoi+p+W8cRpgVq5SQ3oEh
	 JDeWRk9iKjRhWcUKUHCUl3p7W7+1Xgy9d/MnzGwU5CbER9zviBbJEA4Rr7SeQpHBK+
	 4wH8PziJEzY+1lSmknnaegdssIfrDE7izVWOqCgqKN5wbExFNzetLhHNPY0nMdNjYC
	 QQJmUUTJJkLrfJ/7Wi7qHBnE5KZYEYt5AKdSFHLdpVrzfYxlg3KXChko4+BZMaNBT7
	 mBoGCWdcYYMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66ECCDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169709862867.1962.16435122987738108796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598738c5ce9d8b68fcbf87f6096b2d073476f170390af45776b5d2281caf37ec
Date: Thu, 12 Oct 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697098628
