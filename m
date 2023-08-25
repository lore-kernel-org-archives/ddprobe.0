Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACB517EA
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2835C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692947048;
	bh=O7wW67+OedyIfhMjjlSmC/MFdF6+hYBwJihR8lDwH2I=;
	h=To:Subject:From:Date:From;
	b=rwt0Ho0PjVfr/YP4p0imdKJef/eBMVCVqRca39fZ1H8VI4xj7kAsTl8M7cM+XEXo2
	 lZuhFJZ/nQCI3tsP3p2H7lKMkfrw7JRSity4T5gP4GHMWwu1xCfuExFMqkpRDXiosO
	 K0LGC9mpwHuKhBuny24HL0f9FugTvEFxdYIKVxaHDLON0NfaKeTwLuLy6THA6rAF2I
	 KX4fxgLs7ZNcMMGMML1ZJvTpLcJCDFxbzS3bz+WZgfP/Es1b8GINi/Q6zVcFI2fQ66
	 3ZFaCz3CurFcWc9sLRaH8xF/iNeuW32H99V4L11NBLFjz7iWMMiSe8IyQ4Xo3uhgDd
	 C8fJAzQAF6/KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C88C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294704867.21409.14268435686032442635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646633d739ca727e735ba951cb94ca683a725efae0b543670e04912437eb4c33
Date: Fri, 25 Aug 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692947048
