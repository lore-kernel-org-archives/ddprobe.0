Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6493AC06
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHvAq/eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5D4C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696619229;
	bh=Pz706LI86DuXjD+iiUjisQGYH7FxZSyfYRkfgb01ty0=;
	h=To:Subject:From:Date:From;
	b=eHvAq/eM7wWAMLd/hjFv4zCSnv/+BLBYt8KrsTSuAFjktCSLPf0GmRSuBxf6jytYy
	 O4HE524N3lTupt+oDLGnlClT2ZINoFVxWOYoMXW35IUOpv4TXb1qb2Jq3juu/eTRei
	 5KwamLDr8FTZ4qJNUD4IeMuAQ/CGWxpvkeTyy+qht6656opbFcUFOwZUtFnhBsCwK7
	 kzx3NTvPCtW2CIgAgHC2wlR4Td30R4/lq+auizqQiA+EtV+Qi6ZhgVLwPcsjxcYRI5
	 l1Qn/rluxOHMNJyKJ/h3EbyTJCe2aKk9tw+kweY9EsUDTIP0cwJHGvQVmcr5XEzeGu
	 8I2EASvW4b5Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95BAE94100
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169661922874.439.984881379182288783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bd8457529cbc42ef376fcf1603a252782dd3b806f6240cede9dc3ff3e4322a
Date: Fri, 06 Oct 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696619228
