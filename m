Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99F3321E
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71ACAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665607253;
	bh=febfInQ1ygOVzEGcnBX0kRvbucBXPLY1nmHqIpoi1ck=;
	h=To:Subject:From:Date:From;
	b=fvqBB22HfsXPA4vK9Sx0Fx1OmiYwoP7WjC0HULrV3/ehmny7jJNX0bytNp7R4ILJJ
	 r9vu9JhhoL+1ef0B+JrQxdNhP9JWKqo16mpRE/M6c0EMI3IBBI8WfrvWo4D2MektOF
	 FIggA7GuUbeX+4yAF5hCL2daeK4DE4S7L9iLI1EBzyr4yPXfTWkvfafGgOuoK3YTUj
	 uU5YZYKTVwcBHykqry3mZ9Gy7X3kIJcD9p4CEsjgHjWy3Hd6DWHY206yaPAC+1kEpX
	 YMv9NoZTPvRubhBAmOcrT1Ue8hzuez/Xu/9iwLui1xHnmDk15OmEBoClfZsWJzr8e/
	 fPvcbZFjDsO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576B2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560725334.31370.809366270125407062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bedb5924cf6ac9d515de2e8e83bb118f089d0b14de48a3e07f50eb874e02d68
Date: Wed, 12 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665607253
