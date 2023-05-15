Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA431FB1
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08EA9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684137546;
	bh=TFu9Ib4Ip9X6KmdEY0cmS3jL8H85TKxx+2WyVfbSCts=;
	h=To:Subject:From:Date:From;
	b=J9ph5B1LsNnVBpe1NISTt1zW0hpPFn3dB+UqK85IvLkfxTR1pXMG/+ZhypI8pSX3W
	 j22FnXbzO+MHI7N11qydCMQfsUoVsAoc6FUQcQFgyk3G80BjoZ/e37mn0YPjndG5G+
	 Z7CJswTlOxxQmXNOP+bAvljLFBj32/1lktMK/huBelChgzIUdQPCbZ9JFHFjnQBvH9
	 Xz3x41QPcyqrj2V9J/yc1NSpNqJ61/HenGTuEQ+1eYKO7oTKgGoPITpNTLYcehMfvo
	 A/kastDig/RFialTXrJtoyUvS3cPwaWWaDA/McfwW6pXfSDu88ruisK1DTw8YIiroi
	 6L3gKYfJPAIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE0B7C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168413754589.15572.5587802783197790340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1becdedda392b7f38c71f3d4fb6238f21788555f4072058773cdcee2b942e2
Date: Mon, 15 May 2023 07:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684137545
