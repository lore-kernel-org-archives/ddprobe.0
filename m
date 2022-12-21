Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDF753B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B704C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671664287;
	bh=JfAtTdPIoA3CN4lR0n69eS3+6K93h84QFLOV9Y7sgD8=;
	h=To:Subject:From:Date:From;
	b=KzZ3et+hleXmQU//9JjNBOZEMS52JuyRe/jlNihYgMySWLbu87HNub2uLgu8qgLOq
	 6nQ0uGETBl2KRbYH1TA1yWjIF/NcgnIorX3q62azTMlY4Fwjzmelxe0h+t6KMJiS8o
	 YPw42qcr1KfRR72bQRyMYGEAAzMU7L6N+YJAcH7JetbIpqbx5gznOBM8mNhc0XI0GX
	 7D7ApMyuibz508qtGoz2yrc9cjMj3vJIinuwefiC0n/+sJPIXBg96iFEo74kX/wJL8
	 WR8lU+rU2BYNsRT4Ho7Slj1iPjqSPItwhWiNxP98Lhp28P33MVWsKK8uY/yJg8PGgb
	 4lpKu6sl8VDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A06C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166428740.20053.7724445120506007945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f12f607976493848d6f43b6a069725adf8be1cb05c0ad17bc3cc3058097989
Date: Wed, 21 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671664287
