Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FB5A31
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A526C433D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664346053;
	bh=HaWYWH37dUgfk+lq7tMS3la7jxDCwwhtrbaH9+hq+R0=;
	h=To:Subject:From:Date:From;
	b=edTYkFSyexYwdgFDNYjghHWsViNH+Z8Kt2ENqHprAOY0105HHkun6Q4m2xNgmPNiK
	 l0nV6LzOCHRZN6uScT7oK6/8zxdKKmWi1SlNttXXZ9NmW8uOi3Lbfqt9FckdtBMl8b
	 7VsruiQZM64iWik+0l+IDgGdFYLyHYTTYkS2GTrpOaxuyZDcxt23dFjUQ1VCj8MmsK
	 xM5/uRKut0VHED1qty21NKWTGVyqM9c8ZL35C4SSgsANw07FzNYRLuaPnwkJJV9aPh
	 bsFFUiyLO2QGeIxkjoxzzLIbDXRSN/OhIUEgFknsY43uWxzkSnhCrmUeHhVfkctVuZ
	 LG6n0eqklEv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9C6C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434605331.16677.7137605669842074692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bb39a55d4b3c622d9410638213d6707435db1386b760d729e3525db16ed736
Date: Wed, 28 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664346053
