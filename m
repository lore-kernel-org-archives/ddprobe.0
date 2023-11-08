Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA79F9F3
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY9yXcQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82FE8C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699444696;
	bh=2QNrR693TF4fWUWsZTzwNpSUb0KXnPWwQjjqQh3DM3U=;
	h=To:Subject:From:Date:From;
	b=OY9yXcQIWGYbR+ueekcbYAW6lRcqZIxbpRolJfzBlspkOwx1IO5wJpM2vE85SVr/n
	 wB6LrbSJU+6btfUeT1912qI4FnIDZSB1ETzLcg9z8tasjABxz9Jj5qNwH0wgnnSZPQ
	 03rPlMNjvrV6D/8ltDBpQEJeOvG89mng4J6iNHMhiPeSwejMj7sFsbjOlNfZCZ8woA
	 QOml3flroBi19ZjfAwOJeWI1IT7Uw7MZoiphhxYyx0aj1fFzaIc+fs0Uawd5NsEBT5
	 YEu5+GJr3s9O560wwzTbv0Rc2gZtCCi1dSgEU4l6UdU0ecwzTx6SR/COeT0sG/BBaS
	 9Vlc0G180MmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BE4C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944469638.26523.5018774665062296235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c67dddb26a229b9641bf4d157dfebf72541603fe4fbaf008a6aa65c4e020df
Date: Wed, 08 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699444696
