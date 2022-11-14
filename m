Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB944187C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7625DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668408654;
	bh=/P/ODCHH8NmiFPzQ8TjQDCxJW4Et1vFZecA0ZKY97ok=;
	h=To:Subject:From:Date:From;
	b=L2JtVJCjzmr8tonWP5b2xn5FvYw5nU3/JttIs3Ztvhar6GHFhoLkQ0wiJMraW/mCZ
	 jKNF6qaONI5SAixwKFTVCHVW/2d9nZUCGq55CwjvRpvBGnSyJQ7EFcwTCaWJsQXRww
	 U5g9AAM740xleec/Emf45tcnpsW9HBYVfffowhH2bGUjHRX59nEzDsZrbcHb60xb1T
	 Ha6pmEbmkvi9wr9ygwipZpB5uYF2BqphNQrQuEF0kg1tfNCx8ZCWgoliMfgPvsqB54
	 b3w1ebHECwktcIQAf90fsRcvtnju1AjOIVHnv9xZ7xmBgRDxr7SMzntaeZM6JNa1xb
	 T8IgtD3J8h2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5925CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840865435.9072.13131942114419253876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dcfe772df7f0d304e3c94d1a50c2d05be32142c99a5d08ebd90a23506965251
Date: Mon, 14 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668408654
