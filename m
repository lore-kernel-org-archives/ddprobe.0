Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0AD63B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAzrxE7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CA3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700465296;
	bh=aapDyEUhfw37j6Ht6zenOfmmQbGouwYSX1PLQ5DEeIM=;
	h=To:Subject:From:Date:From;
	b=ZAzrxE7Vy8XUPFz0omMUyReEBjfCYcW3B63t8lrg1YczDuH3Q7ImSJdpiZnVCJ0NW
	 NikYBteRPoAJnB4Z26DBDVgTRrs9PSGS2cPOmc4nXR6wNl+4h2dw5KN383A1uXSGrC
	 H3v8DeXQzTahC13YIn4NNwsfb6HmV5r6aM2r08ieW7MuMt0mb2P9C7wAjJeUZ/bL3Z
	 8/7kuj3QeuB9AK7TGDZgfmW9EFJIaG/O4DSFZCw/kQHg6R0ir0lVqk7e/laGlwevV9
	 BhgohmNYSeGOJoIquYTTrf0pnFl5kMRRI38LWLiaR/J6XFFq3BgjpIYv4qOCRK8e6E
	 vxiMLOfgpnltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B4FC54FB9
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170046529639.29156.7829762251110740901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4f94496b6a1da6f8b89980fd7767b495858a9418821228a8132ef9189a4eaa
Date: Mon, 20 Nov 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700465296
