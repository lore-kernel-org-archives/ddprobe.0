Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D593623B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85431C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671541887;
	bh=6myTcSa/baJGf34gV8vantaleM8cJB/F3aaxKtAxee4=;
	h=To:Subject:From:Date:From;
	b=oDBXcsTnO6Z1PJ6N5/pX/dDsePLIwsseqnGxfe1rfT/IMXuDqY0JOI2hUUoiVRcve
	 l6fBxWo1RioqxY0/DK0smgzIOBiB2SOB38AOZfb9J3lDHQlUUgRJMQ/1zOl/hf8ppV
	 38vez/kRdG8tJcPTWTUPES4vP3/T1hBeyLY+XeavI7lGrcgeFQUwj0Gl7ivw+cFi+H
	 tvIEOOppFpSHOPNMHqWGkj9fb8Vxgyjlj9hZDRwUKP090KJY8B0e6FctVKKWdohuuL
	 nbyKgTdObc+K7VihjZamDPZXzypDFw7rtZqdhpTkGerWK/37TosCO+EBLiLYZ5FKeP
	 BK36rz8n7oMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C1BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154188739.28248.14775346854857193937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74884660b631685d7c3f1b444019c019fcf71f35b12c1398fb2e2b1822bcf2d3
Date: Tue, 20 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671541887
