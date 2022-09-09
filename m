Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC77165A
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E29C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662708053;
	bh=WT7mZb8qHHitHAe1F8BzwXTZRx1RiNxZKqyur1WYZ5g=;
	h=To:Subject:From:Date:From;
	b=XyOx0oKkPvkjyHUhXfN8IZ6l6Ov6Xc7iAZzpCrFh7/cLtl2TilB9AAiyn5teF9jDZ
	 xtrJBaTjGr/+LycMyrys0rtl+a+mQolCTww+SmEywn+3lpkzvLCqPBv+72TmHA6zQ9
	 YlqNKRjlCvLCTvPJ5QnZvjfuHjgeUTJwl7yRa6ixBJa2QYo0j1G8U+1Bl1yE8GaaoM
	 TlJm7P71Ygyd5XiVcVLiCWYNJjrAfnhS6KKqzNaIEZxMmP5G1TJ+FvNBAaGyTZf3Jq
	 4lWiTJt6sJ3W/Ck1rcVNkMk4X0Wyem+tMB2HrV7Uqv0BYoyNPV7brVMeJb7rJX1PcY
	 qUWlgKMzbqM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA2DECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270805331.2701.3383272808488251429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e809190e7bdbcc31eb9dec2c68e68896916513b17f52d3f3708feaaf9ea544ca
Date: Fri, 09 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662708053
