Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C3D7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D61C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661742052;
	bh=7xPC+N/IdbYT1swxnaHBnx8gFU6/IE37kJZAw2WVri8=;
	h=To:Subject:From:Date:From;
	b=YzrS8hnLFzaK3RAvU4ffblJa6ZegIlwhbKaorkj2QhrXE81cXbk2dRn3eBqvSxgxF
	 4/yd09+4/xeclAJxndWWZdzFWO0KUYhFxZ58jYt15GlLWNfhGZVpF2xH4rpD/2/Ag5
	 oc9/lPmtChFPyfHjsW9n18ftnQY5S1FU+7qG3R82ithZrGocTzEZADP5jRedQBlESM
	 TDdP3QrLf7ib4or6utQCElKNJHdrZCJW0zG9UqAIARlMc6Dd5/POu38XC876oQfyzb
	 sS7mPwF17mQv43l+2HJfMZC1sH1PtFmjLznBbgrr8m0vYbrh0pkvzMnrdH1eZYQShT
	 e954Jt7OA5Lzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B2EC0502A
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174205234.26702.3373589132941883614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807643a63a8ed1e935bd659c9a99f3e7d70c297ef789d26700fd9b56968d6d28
Date: Mon, 29 Aug 2022 03:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661742052
