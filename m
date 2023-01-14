Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC12E7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AE4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673716887;
	bh=wZyfcEh2r+koElfiJNHNhgyA8EE75xyivgTTNiCWRH8=;
	h=To:Subject:From:Date:From;
	b=Vfp3WexSaUIAPD/3WPJFOGt3/7uutFQkoF2GH1MyJC2sRW5e8mwDgaH85HdcrnmiN
	 LK/HMes2BgqtgLcHb5/l3PfjaJxKGzEQy/TDCxb6ig7xQjbaPEdm12415LzLpAAugF
	 BonYSlhIvs2TfKLeuDEQ+/up0HPXOHv5qOyZg96BxYpIUYdFjMj5FqEHZl/OJQm/p3
	 ZreTD/6tkiKDeba5FZpqHmbWGDNt+x5dF/YvIwhmBu2wQgjxsAZLiOYtf2yiL+SQw+
	 GsklhWXsa0ohOdxD4tmHiUy6hlPp/H+v6//BvaipwNF6PP22vNXui21UKYdCdL7y+o
	 Ss7XpA28KMxXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61325C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371688739.11510.15954671112364385757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d491259cfdabff84a7607c12d951de73f8359fbadfda69decb0146d636aad76
Date: Sat, 14 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673716887
