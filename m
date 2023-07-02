Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C4328EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60BBC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688334308;
	bh=SPEJS6YwS5YYr007g+Yu6mSLSoyLOrj5C7hXWNCgFlo=;
	h=To:Subject:From:Date:From;
	b=p6uhqfzyKySQKxB+jySIy09mcFjQjKu9WumvgRGZ+zJdGTe9ZLYBgQWZZEPYFxv+1
	 fDxBCopZyWvLVSwnh02GMXSBvSvWH04pPkB8fueVfoM4Z5Fh0Qz9LxSrQ25pGlbH7e
	 83yl3KMIiylN30IgKCNycW5SuwuwfTTZQuOpkqWT5g44x5kK44NdeTsI0q3wP1z4AH
	 hVPK3TKIn23jcarItFTyFuWuWJm3dVhmnkpJN6U/h4NNFuifEnMhP6gnAOD7A+r1tv
	 ar8CiVsN3fdIM/Mhd2f2Ppn/ieBK3/aihePp2chOnLWnHsDomBgXB1P6wyscrNg67R
	 J75GAXqR7xwrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA91BEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833430875.10654.6885979535224672384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7070cebc63f8830e681f4334905404c798c4f7cebaae21daf7883c8429d30922
Date: Sun, 02 Jul 2023 21:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688334308
