Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ED410F8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIE3QbjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843C4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697952496;
	bh=ciY6OV0l54mYT2jBfRLUk9dxJ3Q7mt2TdQg7FYb88Xg=;
	h=To:Subject:From:Date:From;
	b=WIE3QbjVqlPxajT+EkytjDFkJ4sNott6dx6WF0q9r4N/VaTTLKbcJnaFV+yxsKkZ7
	 Q3XqFboqQjha4vltjR7bUGcKvoy6KdnM4SnaacsGaHTsOfTR38B6lpqVwm/9yW/Bwg
	 GBbhOvW87IANcKsmOT22gLuGvy72vR40F0NmsbSBUgzQl9JpgEnNaRotg/aL8w2dr9
	 QDjYpaYLJ5fCW3L3NiqtKlUKQk+QIRfeupkxDxhnlToqLlENxLe6rnJzNKvwAILk9Q
	 j/4MJzYAkPhKEDoQkbc6jx57qqERvWsCuA71Hmbq1z+K7W7x6ExujpkVIHTpjYTiDK
	 qR2uF6U+5j7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E38C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169795249639.16345.5364986986571582796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613b6bb5150e3a3f39c9cc89ad0620594e72fb110b020c0be805c13e37fbc7ad
Date: Sun, 22 Oct 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697952496
