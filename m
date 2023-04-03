Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061C86FA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 14:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A4C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 14:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680533765;
	bh=+rS6zPlKRq/x12wF46wEfJtWgo8LpYIi2aRMCAxIjQE=;
	h=To:Subject:From:Date:From;
	b=T7OwmBKczVxHhQBfNDXBOv7BLeFFCEembiQMr33nPeSzQ9GGDvKhcjYLCIM92Eek0
	 1sS0g7JAnilvdFGTRpuVr28AffcgdQcCfP9MaI9yYvMvZmyz8Plo5ikKfsjvOXSNQS
	 h9Oeh6SNVPG/P3w81kliusgbO5RSF0aOtyzXbUDDPeSHYxwHxVsgDTlljcuQWO10GG
	 Ntyp134ngkXnQFzeMjpTpN1Y1FF0MYbcw/gQJVy5RFmtUJ7EBmh8QcYAFRx/BSnnAM
	 phPhCoJ7Xiw0ERb7RkYERtcAnSv2PWrOmfSGhM1BH9DB917Pv0+FELFjN0Y0I73ACc
	 Wmk1vSiKBEdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A69C76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 14:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168053376573.14732.10574366512044442236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ecfde1aaf007cd75d9d48a4a11635f3b74d9b3d4a35f869a2970f3094cf234
Date: Mon, 03 Apr 2023 14:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680533765
