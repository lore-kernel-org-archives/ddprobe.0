Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9E0180
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC43CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678753025;
	bh=8pkMF64+ItFjJgHqaVG+WoVzRLudx/d+2pwoPRa+uTc=;
	h=To:Subject:From:Date:From;
	b=MrCQ2jIDnfQaV57AN8hf29BPUqFJglQJAOnm9SgCjVUuv7ccSx3mFt3Zf/ybeWqTK
	 tBAZJ9CD/UWY7dRCYgNMqyuC3i9W7OphHEaB91SYvxqAcnrVCkW2ZSYpIMiItN7hMW
	 QRMbguRkYoqkTM6K2ET4x/9RPw2F4sDnSCXvnEHYoBcmReK5/NcKSulZHB+pwLAscH
	 7GPqocGbSWUDImeUTuqWNF9th6vrfO9D3xrOI+Q4O1p5a1teCydrMKIuUiSU2Rzuh2
	 YuCnpwRMTgCV1l1Z8SydtFKEgTAEOhEw1sEcBp9eyTFJN2COlUmT64CvO5qTAKo5eV
	 HoDgwAB4Pn32w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD947C6FD19
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875302576.3602.10336663213511760498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51b35e328691bbd76e64e426d3e8267f8b412e2c06f5a5ae444a370b25d66ff
Date: Tue, 14 Mar 2023 00:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678753025
