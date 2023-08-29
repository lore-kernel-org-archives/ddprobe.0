Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8863BE
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F6AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693297448;
	bh=kXfHuhc4S7xzg5D0Q4AbyOeSIgUO9ZtO5mkcAN+XbCw=;
	h=To:Subject:From:Date:From;
	b=TRoFidJZOmLAoTneQgclyDQljjzo7N6IvZgbbrJ/KIxePv/NIDdF3ISN3A1/CEwtS
	 AV1Ua9F/LbCn1sIMWPxR2fEK4uLFJ+g9erIik5eFryvhmtpqGvVmk1P1WXrq3fz5yf
	 dYrpNbW3A/XaFGHN3Denp29K2fnvU/muFjKFt9Edu6kM4mrJEzL1uL9j/RQh0pjYdD
	 ne2rIVFjQllceMNpZ/g9A5Qys5jH7suhDBDim2ehAEpNRu+gr9hDRxPWh0LoUTtF03
	 8Jqwt0EHkZqO0v4Y188OnBpazO34IGTNNgAtMsHgU66tQ5UlYXeSrbM3Fx1iOW9lzg
	 8L1wMTZfXrh5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC57C83F16
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329744869.16678.16057029043449458537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4068dc32902e84b8a2c70955e04bdd84f525fe7aebbdce46bc9cc9893e174fbe
Date: Tue, 29 Aug 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693297448
