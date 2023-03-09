Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE07E6
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08FBC433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678339865;
	bh=GE81uyUC7uD8Lhb0EMEOJ3s+QUsFtli5Ivhtu78lg2g=;
	h=To:Subject:From:Date:From;
	b=LrtkMKbYdQyHnXLdDNTCxarHJ59cfIGky1Q0BrrnWVwlNxJFp3X2izr+7x5j6d3yb
	 zhF6mh0Yhw/dBfDOJsBFwmmW3LsAjwaE4iXaAWP4X2I8X6yYjfHUcUqhMXiR7aVrly
	 j/yICur4hw2w+nSnPusnfL2HU9BqHRBWt1QaQ35u5XgUcHkTYJg7Gn9je3UK3uOOym
	 JQ60Ex1fVMF2VX6H3FCHMvPsE+MRjPonNHEfGOnekZKbl1wWTyl8h96ZQX8/S2wyin
	 N5H9KwDYp5vhougX297pUTNc3dKvMYp7TnM0Sp4s2OVcAWEq6nu8/+vlsDBbCJWuRc
	 jSmF6YilrcQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27CEC64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167833986578.7273.7701022220848132922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713c842f822b35121fc69d887d54a66a258d02c6b2d1377afbdcb900aac984c0
Date: Thu, 09 Mar 2023 05:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678339865
