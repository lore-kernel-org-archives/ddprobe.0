Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7995239
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXxEjZKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9592C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696916228;
	bh=3UmmG47PkopJ1aKvBO89eLgD38VvogbY6PXG71NvFa4=;
	h=To:Subject:From:Date:From;
	b=uXxEjZKzpffbeMOZSK089xQf+hMPh0gGH5F0xDORlzs6GqP/VqUIPhWP+PfC85eia
	 c5XsBc0Gv8h9xdZgWmQWeoyYuID98fgHlrXa+BlbKt+OiSAOM+fMQZEVDhdKSef4Jx
	 W37XbA4SAC4w9YE3aCcYoAH2lpQSK3LsSxQFxc4Gijw/BCASeLr7OwMly+0LjRrel6
	 pK7Z66J6R8Wmz3JyEgRcD+18ynCtCZlJFwkTaOPbSfkhDhGDmesNVBv48BhpBCEAId
	 Qr8dVMWRt/laGMwcOY+NIHIL+xskeFviB2OnoMAbLLJQkyhpY77H0lwba8ApxQNl3x
	 yT/cfrfmp5pUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF91ACD68ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691622870.10481.15443541297649530974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d360b54439ff2f833f96f6747a908603af70729d763dbe9385203d33ba5c025
Date: Tue, 10 Oct 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696916228
