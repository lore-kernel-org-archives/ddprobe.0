Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6367E168B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B32C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689889928;
	bh=wJtvCqIht1awY5REtaABSsq6Xir78+DAg2khpNVnNHU=;
	h=To:Subject:From:Date:From;
	b=eWPIKasuZeI/eBV8pm5l8pl8HWM5kcFrvtGwSsqY2JXJOt7iQ5GvR0gIrYoqEJ8LZ
	 rYMTbCrKAGgPGsNAyq3fDlPBnu+2Urj8Kl9mXt9E9XQ16Ko00WZL7eP57ZnJZCkV1J
	 DSOJYOO1CeXIRPsKgVL3a/myjZX/jxy6NXOpyPJy6h4NGKQHqvhVTULWb7uyBsBcLM
	 hQZblWeqebUvXZFGiqSW2Rf/pPASqrlF5lQJVDDW1eePXlFvL2t9AvIm8WOG+sq3H+
	 1CPBmnt7s8dkxHEwPFxY2ByD1NZ5PDPUez6bndw9UgO6M/MGOcbwK0zhubO1XB/gmn
	 KBJK3C/JmTuKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB58FEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988992875.9240.5792319712537678351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af85ced1b906c7446c0fbf0681d19354522fa00510336c7ec79d506a4baa0ab5
Date: Thu, 20 Jul 2023 21:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689889928
