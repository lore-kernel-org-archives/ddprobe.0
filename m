Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AF41369
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUdSzddP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF9DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698196096;
	bh=tTYnu75+0jDpyfD+aH7IKc1SrWBJfkUfiXdJ0iVGw+Y=;
	h=To:Subject:From:Date:From;
	b=bUdSzddP/PnOI0bKjMQTC7k6BfCfEOLVYjQfME0kYk+SRknBPLfAHuD4/K52788MP
	 bN/FnGPWOtGzdbsPvYESoMe2rbWNCaUE/PSk2gZxnLI8v9NbBL0jEyeyOH6BszdMKp
	 Tb3R/VkXht6epqv1XzH7Ge234sHYfQLbdQowU2hNFiRyZY5hnUiM/QghRCi757Wy0r
	 Twm8IDUlZ3cbp1rI+L4iGjVoE/r3nhkMfpiGT4WINDcdne36Veij3Ux08SEVTYb+A6
	 iDB6G3h6Yjc1CT3N9CWB6zKVDYsWuch0ecefL+M/TRzid1ozYs49GBkeZVmWUGfqUV
	 fEQ6e7mNwNomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C76C25B48
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169819609639.22208.9532649011528178048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9ff5e926809d1d5b716647215198db964d68e9056581b4751636ce41f2aad5
Date: Wed, 25 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698196096
