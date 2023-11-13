Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76B15AD3
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqXK4vIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B885C433C9
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699862896;
	bh=+aF1wbmrNe3dBGuNxrUwm72ggM+nwp/6YhKuRmzZ88M=;
	h=To:Subject:From:Date:From;
	b=VqXK4vIlWTowyHI+7qCq6cZ3f3iYJIayHfivBY3wN820acQiVFBuVmi9Vyvvv2tC5
	 SPa4exzFWoJmrDxczQlHs0/L52vkErTvumd714k2teOwLMnpQgQX++Nm2vO0rD2xsj
	 +duFry1NWG4WcN8paZcQoBb/82MHhbvw4nJTnPbAmJJ2nRgS6s4XFyfGx8KtWdvfG/
	 nLj1PRAOKq4B13N0O4Xgh+OAmPizSSfj/LG8HHd1+OwNUTPU+rT+U3VFOWP8FkPhYY
	 BogdByn+j7ZAXgwxL0RHWc95B14feiBkAbP3x6Aowhr8930Z4r8HOVZYKQA0dH8mCm
	 Pu+vvGCWHubDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A062C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169986289641.18840.8544067093898912582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d395bbff3e65705f43f633edd96ecad120c8b6cff4cf1c2f1f618861337963df
Date: Mon, 13 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699862896
