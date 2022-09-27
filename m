Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E9F7E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7173CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664252453;
	bh=yLtivt8us6C0OYJ2s0J6AssbiutwwrbH5FWYV9UfLfc=;
	h=To:Subject:From:Date:From;
	b=Wsw52KBg9gDXBjD4E3Dc51SUUyaiLhVFDFCCOw+ueCvszGvRrP2T2xSD9bXpSOzq/
	 ABJru6IiBiGqpFyK2zGdZlFXBuvokZumP1v67xv8SanHiM32d30lNdcf4vfAtnX85J
	 60tWcYizqHnKURUF9xamFNWFL6oYfP9WrR7S3RWZ1pNbTz91HM76kMgGiKZxfH+X2J
	 F4qsQe2DMUVMSIsMgaNCz4hWKBc8bTW1iIc++BQxhro5utLGIU9VV6RAUDdzZWug8H
	 d5Ukg7wB9zTsG2y3hSLkeL4NKQsJvsNd2ups2Aew1o0splwHxPEK4GHAftubd6DrW1
	 4+DhP2T5/n7mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5583FC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425245332.16193.17964236992264912524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ac53b2814c14ea3cce7958f8b6a20474bd084ca099c2b788b0a50f52cda1b5
Date: Tue, 27 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664252453
