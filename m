Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEFA7F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD669C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687654388;
	bh=nHeMKnehaX9RcXqAbqVegKVNv5qqIbxRRivGumS1ZDM=;
	h=To:Subject:From:Date:From;
	b=pC8X7/WijhbwKyHHC/aEyWPpP0J3I7Mh37r4Zq1T5RHt2md8Xb67itx+wzeNWScnA
	 okJHxG7lt+lo4rIsimiZtcn+yeydPaLWtNMo6f/iRkrjL7w93w7eaFeAQbqV2cgwjq
	 lv+rteo6CqXE8kTTsGzcgFBMSTQ7abGRHW6RunqZqNmv85p5fqNWZl20wpgMfEYWDG
	 yI+ci8Txrk8KVSSqKODP9IuVDucakkw1aLUBQdpjb0VXJlRk9unD7U02t84ysZgN9C
	 lQsULr3kv3K3mb68lLXgH1sTqcvvZiRpUBWUOyU82/oskzfOdZAQi58G6FRQmU/Vhu
	 y5xvpCQvOm/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55A0EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765438868.5164.6877728636772297620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9344e357ce1891926198fe859396f10ec2d4ad0a535e41d21de1d937f945a9be
Date: Sun, 25 Jun 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687654388
