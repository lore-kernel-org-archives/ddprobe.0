Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0E863B4
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C5FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692351848;
	bh=VTTxkzDbVIHK+TBexGdEeCwU1EqsvXJ1vFreqN2OrHQ=;
	h=To:Subject:From:Date:From;
	b=aMjIkLrn+0FETwkYxatfYTecvtzd27uXp1P63vkbWZuq3h1YaBclXxcxUrbY61jRf
	 Anvk9oEhyVx0amvjHlkkIithUtPKTWWrXA88zWfn1tA5FP6G5h4PK7EGowFJ0PNJci
	 khekUje0XWHlv+I3Z2MmE1tOGKt8ls0uKXnYM8qIwVn1kwJCndmcLcsb8jUlKaIs6C
	 H4BIB2Mvsif9RH3vdPy2fK3G001KFQeGoa+RTEsAEZde5xSzlFFCFCRVbeXEn4Gz+g
	 4EOgO1jY8sF2kqsXsII0Ma5pCDPoj3lDV5773NPB6/cKpEUXTWw+Wx9Mw12GRqU+CC
	 nEHc+uZDYrfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9227C001DE
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169235184874.30957.11336088824211763778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63d9a26581f089d9c3b714b0db8f4564a600d99f4067078725a33058f808b14
Date: Fri, 18 Aug 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692351848
