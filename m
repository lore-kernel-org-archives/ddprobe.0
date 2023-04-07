Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314926ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D33C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680909665;
	bh=Ril7losZxh6y0PuGR8nHfQUOkoXvaVZhoZnnowW78Qk=;
	h=To:Subject:From:Date:From;
	b=fsffphvI0Jft/KGm8wkx/eh0BIAg9Wdn2m7OrH471EwsR2+BQkLBUVHW6Hd0v87Oi
	 6foAk6Ueo2Tpdy8xslSG3hQPQ4Neisn+TINP65kd9Kp0ocXlwWpGduCf4iYrUTM36B
	 /9n7HLRW/d+Zxk23eCKyfG2sJ4sz+1pI74Ah1sX9/b4EscLs7WhZ7eu7HMLCYcB3EU
	 5RnTjeIls3+eihpzwKDp8xkut+Lnl68DcRaz/53o4tM9wxW9wqY1oS0oGYK2HEkwd+
	 WrStub3M6NhpvxbRYVQTa06xxYdufmGQ8q4t+jHOTkDQd1krRlmmQUHOJHigSIcoct
	 fK3MrS3WqXfOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA2CC77B6C
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168090966575.6934.11901471857865481503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d51a5262a2ea1d2fc9133c107b79dacde5a8a417ef07386f3d4909c36bca444
Date: Fri, 07 Apr 2023 23:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680909665
