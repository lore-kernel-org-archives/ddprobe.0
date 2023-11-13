Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BAA8466
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7hP//kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F06C433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699843696;
	bh=BkL4BYqWB/oMuCuJpUG0kot+gf0Cm/XwIEQ84k/6Bx8=;
	h=To:Subject:From:Date:From;
	b=F7hP//kk7cu/0+dehCpZoThzISyym6SWPpV4Jgo2aaRIf5wTWP6QtD9xHhPdevjes
	 7jmzsXFP78TyCiz2hRqW9FfqwlWL3DCAqoj5M5TQ1ZXYlrkV5TtANqSMQWt9Nk0DpV
	 tK4G+lqNJn51cOsi3Pns4YzEpnvoepCo0ASiy97ReR4yEL3AllOMlTap/a8VCAKr2z
	 WNRNpoF4xxYTLISETysP6sUU6bYY/wMHtu+8ldZFcsPSe7QmTJ4taEtds2n62Ez39S
	 6m/aCN/3dhQHXKoZPvcltKQYBcWDmHFreayR0BRcjizPY56okHbJrFFcGliFuQhqOJ
	 F33atHz+cgRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CE6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169984369641.17850.1419513455209140532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb450c63ad0108fdc4d3165fb6bc954d1d147e49fd790ff3380e85b04413bea
Date: Mon, 13 Nov 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699843696
