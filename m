Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34F8F66
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0271C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680387905;
	bh=us59/kXLWy9ZXpb+InIInGsJMnMobwDYl17b1kwfw0E=;
	h=To:Subject:From:Date:From;
	b=Q5xdhyvbjTCs+HZrZzGyR5vD2YPs7OnSsx7oPXfuBqoHdtnlOdpMpDS52ktGJajKN
	 stKY35y63Z+MIHGFx+McEujd8Z6IDHZVSYbqPAZyH2ImltrIZ/2FicAZVBd6dlSR3H
	 tfOINPePvvjpikBAaSP3MuUOSlig+nx5yB8mamluhu/WCEXXIJvhim18Dr/UuFrrkX
	 SF8hqKh6SKvL2flhs4/x6dBX0izPopwqA1Hg2swbSpL065dQ+W0WdqKrRcP6mOrWLS
	 sxcsX4la+OM8/+lsYQQtZpXKoPG39B5oHu1xh7YUgPuoI3vtTtkOPaIym5ImCG3oOD
	 gwilGGps1Qwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C321BC6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168038790576.20437.1619348239209885737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cb51d1628153f151617d8efbb64a14d0974406288dcc83ab29df05ea861403
Date: Sat, 01 Apr 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680387905
