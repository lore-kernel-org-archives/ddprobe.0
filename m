Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6311C3A
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727B4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661381452;
	bh=dEgLbwsMmm4TOdsXd0RwGxheWLIgt3kNfQ//tO6nOwU=;
	h=To:Subject:From:Date:From;
	b=OzipeJJmaj6xEaNX85CWb6YPUs4eseeGNcSKZAjDJKCyDbqZtQZP4Ag+LxYzquU44
	 e49WGSgdQynXOtz+y0J+e/RgDIUNAmdbQhwg9JgjnSZUliipNyIm/ZVY4s9V8XbnJI
	 keXBgYg9VCV7dtxfsi+NPCWEeidOrTdBseJa/g3C4sAPd+8RG4hkBf3AEVRalXEoYd
	 +Ioig1MiOSSvsJE47jNno7DsrSwRenj8GxL/pY+6y4MKZ9Xqr8H2HtjSLixK/nKACM
	 JH0PRVlyUmj4ZDjeAH9x8kRZ3YNbFZ715wm8nm8XjX6dgrYdMsDiFlBLTJpKQjqaO2
	 Vxc3ENNjy7qOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB3CC04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138145236.4619.18239569721362764730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3512c8873c0594f6ec63de1e15482b664606821fe202dea506dc2dba58f5ce
Date: Wed, 24 Aug 2022 22:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661381452
