Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D301C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E46C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673106087;
	bh=gGTH+8jpeyBsmfP6UtuDN2cihY+iIbd3xU1nEL0gXy8=;
	h=To:Subject:From:Date:From;
	b=uOGEI59mhQ6ZP2Kntyk8fmD9feF9N05U5d+SNxx525J5bcaAtO6jlfhqOR93c+Y9y
	 Pk2v8/aBbg15+7ifnza5o69lG+ozdabvvILaEAPEBowjcaUpRufLcyscCGhFF0oCcq
	 qqYI84tk1I3E0scIiqYpsP36C3e1r/HuHBrlaVQqcx2kuShBDTg9Jzw+kPZ4PWRmZi
	 HXA8yqOWKzaf6CSosTu4z6ONBaSYOseYuT3knRJp/jxqx1U5gc3pQEfcEtKshsrc73
	 D7LNX2aXhHywREzeb/VTR60ztpZZKTkOBrFRJ1Fui7VAjU5eDqT7tGJxctp4chgXk8
	 1/oYFOiCEKBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E15C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310608739.15736.14248395509457556306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8108d876643172ef0acd14dd2999c0b84e9e0b334c99f188600e970d02502cb2
Date: Sat, 07 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673106087
