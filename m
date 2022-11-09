Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7CC17F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FA4C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667971254;
	bh=j+MMu+bAwvLc0pExKpwZESO3j/6+ya0pYyYiJU8ftEE=;
	h=To:Subject:From:Date:From;
	b=McV8DLinBCkhXA46t1un9HPSjD1iRRU92Q/Q7S84m+eZkZoGuNMbK+I+4w80OGqUj
	 IbnQzjS+CusKZklnCV86PkuvzM/ID+aUrB/xTqXsxNJAa3Q442thAaiy/mwTIGsAqD
	 qd77uzxg95F4+R3w72xYyJWfz6obnHG+O6JdrY1nT6W2Qp3PUPsYqRp0wU3SmHoPOc
	 MNzxLYTO2PqIAkffQcj2i2wjZqZfT98X6ISB4gRy8ukd0NY8A1voHtW7apXnDyNBTO
	 8trZa1XPwpDAPH1tZfjl8ziOHZchgr0w14PeObxqOJJeHSdMZkfuRVfnDIViBmiHhk
	 bzOQNT1Wlt5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5482DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797125433.715.334357219596906735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb94b478c19fcce38bc9b11af2366e632482e74264edd1a510ac2ef7a5023c3
Date: Wed, 09 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667971254
