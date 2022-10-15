Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A362904
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711DAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665869453;
	bh=v1+Vb4Sa2YbXgZXqLsfjRls13gs0jwzzAtHedL9WEnI=;
	h=To:Subject:From:Date:From;
	b=QtuYXGqZTR46VoaIQP1mZy40PyFbH1q7UAbyMHO7pTAHaKshMPfAUSA3/YSBRvlZQ
	 BseLIVzX+dpEexXMo4M3ofKC2kbnPambGHjQ1BZ7MeEUNpD0EkeIB93hUo/3K+X3+y
	 RJICKPK48rhv9Yt9XKo1SP0HZnLGWBDdSuC7z2ZYHMUGStdHl4/9NkzXU7jwu5RrxU
	 AvA1TYxJODBavzHr3dPYi3Nk777Fjxixw1lSpydJVOj6BICiZn8OxwaIckip0mMCO8
	 uBuJXlcg3PVxBqFvlzZSixvX7o7GUlnqI8ONy7WWq3xs5I9kwCZHO49MlkuMeWYjAS
	 jcbcVKlBaWE4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EBFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586945332.9383.16104577118672879938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db3ff5fa83d9e220ff8991c61089695180b225e604742834ff7d226e318cff7
Date: Sat, 15 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665869453
