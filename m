Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79E6628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82455C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673581887;
	bh=qRJgdIgepnO4LGh3E3e3gJDEcVPkn4Budy0Jr+5t4bQ=;
	h=To:Subject:From:Date:From;
	b=hU7saHwdXxME9BDtJiL69Abgc8o6dehMuuAgGgVW5DNPAWbkFvFLrk6X7AAFpo3ob
	 WmH+7lKuaJTs0fT9tJY9uRRNrx3niWCocw/vWgoXW/8wVlWldJaYxDdeXws8ZYSpob
	 Cv1fAJG0I9hHtvOErLeygyn2UGIhWdbZir6gt0vYe/Jh0au8byAoTSoB/InlqDNGry
	 ER7L5vHh4KJbbS/+UdRyJtrNl48GKqmkreuD21ihf9dMf+lOvt4cD1GuUKW/YYXzku
	 Xo04OU6O/fWbJMxpuvPmUFBbTYus41oC0RH+5SbqVqqiCPclfAOpSB4GUfbKvh+71T
	 UL+dZJ1RzHWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EDCC5479D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358188740.17221.190386876917746477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ae2bfed07806c7e3ed16c24acd212b6113b558f2dc3a57b2e22a0730af1263
Date: Fri, 13 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673581887
