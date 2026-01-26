Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D1418A93F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769441034; cv=none; b=Os1IRTsRJ474A8mzw8/6luQf3qIZBP5TfvrgLapbBP9Wz+27ie8pjIzeFDQm8Vk9bKzoWP9KHRCh5iR4h8Oc3RrUoP2dnHMCAC/Vf4r6/6f8GOSayXAh3jNUvBiOsuedVc5tnuIAD+W2sTnWKEfj0WPNE8p7IyFiG6WWd6Llzjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769441034; c=relaxed/simple;
	bh=7gNYo8R++q5847OX7JZfHcMgmUS5/2ztZzQICIvwuaU=;
	h=To:Subject:From:Message-Id:Date; b=U0OFSSuGGBsbIV6w5Lc9ga/3yJqlnfNzkiZFILwBBYlXUOTfmUrK/9yVaWFbFkztLxOYyuxWU+lHD1RUvxeqs1WgiPG9XBdgshp3yQamgTo6eLNFf1c2JCmNT0ZuqZFBwQTvqPwXy4HZl3NxtJxLusMMsQ/p6aZTx2UX1CKQmsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHJSfeoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHJSfeoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769441033;
	bh=7gNYo8R++q5847OX7JZfHcMgmUS5/2ztZzQICIvwuaU=;
	h=To:Subject:From:Date:From;
	b=BHJSfeoDCAabIvG8NXMn/Nsg1nLGwoaAqBxON3Fh5Hq1Cm4bcUBWAk6r5ZwEkSbbx
	 jBOsPozsvPK+ElX4GY9T1lKV7DkI2WS9Lf5ao02RiBr0TOkZycAP3cJK7eJ1jcVf+1
	 d8jKF1FeNx9EZU1Dqxiv28L+3cD4PWahZTs0z7Lu42dxarQiKhvrYZAIawYc0trUwK
	 Vx55F/Sk/8GHPDE+yXH/+2Nr6TkV5rj88bLvq2XX5AFBSgrolGc0VIAIqFH4dlxrYU
	 6lLU7xuW9Qn924v7do/K186DyqOTJ3OmvEXsh+ZhqAAp8nWr6VgnDqMywaPVCveKVv
	 NzYnndWGEKwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F61D13C2E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944103358.5410.3868130871235263184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f43bd6bdf1f036b386b64a9bc01ee05b63dff1fd11ed79bddab20772096a348
Date: Mon, 26 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769441033
