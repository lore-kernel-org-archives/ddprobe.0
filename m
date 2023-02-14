Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC5C0BF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4037C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676393765;
	bh=3sfdmaQusTu/4UhYB4qwUqJmhcndpsj86kVBFJoC0kE=;
	h=To:Subject:From:Date:From;
	b=OZ0ztvCMpqdc4UYjF7Ts1Fh/Y1msd+Utk7eqyrwhLki68jPrvR2gK7uUqnxtKx08S
	 vGgr9j32Y303Nls7cu/C/21fHQUs55IFOqCE5Aovztix8CqdxIvb4iWQySGtUUP6ZG
	 /BZ5XtfUrOkVNHYfnrvkUKQiLn5hk3El19/UBQU/v+Cvua/krWVhR1/+y7ZhxRiqoC
	 GzwzVsC5woq3/TBUhqJUA1r14cCaPmhOwzs/cx/DZtIriJMiOF957M8cuiW+plm9gR
	 /6yr32At5AQoxYJW5sP/ZIHSKMRodQ9ocAUKbCwR3wsWQlgnTKghuz5iae2ZHo3wJy
	 rFeRcdc6ywI2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1F9C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167639376576.314.9587329420419626920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24c0e3c2593b3810bb7359cf82099dff3c13b586cc99b544c10ac23bd817e18
Date: Tue, 14 Feb 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676393765
