Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6351381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF1BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668853854;
	bh=dYl7PutUHyfGP++IjAIQCCi3n/7UZcHoPSaehsfIin4=;
	h=To:Subject:From:Date:From;
	b=iPdcKszC3wwZCZ3LCA5CKS1Ua2h2SlValmYUgraDCG9UboQl89fmNAFQ0d1+Ucoqp
	 Q8w8KmWGgJspvb4aRGUydkjYVxsBLqeAdV6N6KhJ0ua9hHzciBRCailGCFxQTx9nKh
	 3fkfKoiI7giNoHcoIteK7jDNpvFusRFE6BRPMza98Id1s58o02vJDJnt67AUlf98Jc
	 Y6wbIy+nVXX9zG6qU33rILYoKs+t0cvcOnWMs7YTOLnSBM9gsbmS1LQjuMi8F5DLos
	 5pZgsLb29gI7IL87NiexXoFm5OTRDeuV+A0MSHhFrXCcL24VMNSaMwKU7Z1C0DmbT6
	 umzDmqh65oRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581FDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885385434.1423.2006619768079211678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce9f3356b864e964ad9bdfbc28696330fb87ef89527360bb4ae2e9482a693d4
Date: Sat, 19 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668853854
