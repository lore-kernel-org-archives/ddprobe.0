Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC85ED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864C6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672212687;
	bh=iBGAfTrnOc0Dd9Wf8d4Mp6RDr46aSxkKA9sQqgJvl0s=;
	h=To:Subject:From:Date:From;
	b=ENrtgdssmkFf8xM4YbufwBFa5K/G7r76DF8v4LVpbjzKrKnfri9E0Klzgp2ZgMQvQ
	 5haHC+t2s51u3yomkG7dICS0YD643GKQUAmUr8uvB8ngyg5Vc6Zi9tXv2PyypCS8Ih
	 BRSDpFSoxQDcYBya8kLInpD1YYGt8hnaxJzOTrlQ8DufV6Rjs83OW3meXTWJ0ZRqah
	 7n57eLWXb110KbSggwYf0k6nKoo5EjOvqglv6vnvGiTzfENFb1JLN7/SJUuGxv3hcX
	 YvnQMIv49wBuXe5oUzM+laFATg1Ao9IxdpqOlU3DTamfVfSeh11PY06NrfWOP0cAQx
	 f/qlTrKyh5NIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D72C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221268740.24125.18068426642514251652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867549dc4c8a7f208cb407ccc0432539f82dfb80415f96033e876903913d6748
Date: Wed, 28 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672212687
