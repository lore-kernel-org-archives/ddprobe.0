Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F05610D
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F56C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671012087;
	bh=oei20Rkvzgtg52pvwym+ercFb2T68AUTaU+jUtCMa58=;
	h=To:Subject:From:Date:From;
	b=RgOxsYq/AsOdabJ8w3g379BLpra84XAqJZlB3pgiFFHBEjpIaY+x+3NlptHK8iR3b
	 cZZjM2QQgRqNdEGxhhMDJd7Nc+BnTebH9cDNaXPXwfavnahcivLpkShxIOH6UBrnkm
	 lBY7QqdKtB/o/Ke/uKFOYV+kAOpIULoTr6EvxAK/c19M06571DyN6XDhtIZhffeEtR
	 Vj//UJCGsqAdiwfnTi9Ooi05Z6cV2kPIs1OQlVhTc2VZ56XCJolnluVHyJpbvQtX35
	 W0Eq3Y5djAkkNqt6WURx1ELca1J4YaAbqxdr+8RaBSy/qbgA8dy1xZyAKRaNmSmc1g
	 BTpZoNb//bVqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F175C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101208738.19122.14072630478327537465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf95689f3f290b7b5d0f355cafac59e265d39227881aad7a9f74e3781d04362
Date: Wed, 14 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671012087
