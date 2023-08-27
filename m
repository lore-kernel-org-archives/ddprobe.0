Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADDC2F3A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB016C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693175048;
	bh=CewdfHSdB5w1EQtsv9dSit66thJS9MQpoE/W5epSgpc=;
	h=To:Subject:From:Date:From;
	b=kku1kBM2Bl8wKvieKXZk5iLJyw4y0zI54/yloXVF28ZMA6Rh5EO3H/hEyTTrYgGPV
	 r2zWxdL/fal0/dE4bODbOdbjkjrBMTNNL9gcxj6nC4b7unl4goIw4qqldmbJ0sIs2x
	 fJpV4oyEkJNGize2cmFr0GRE9o2gSxI+fKOIZELY8wgdKeX4vUDm1ahV24iHY5bmzO
	 Lzjodqt96S1hDMAKOXG9W0vHvEO8jgsGBy4AFLrnmS5dKyGeD8RePRfNqfOxoyeh9+
	 V2HxINJALPpZfu8N3aY1l2ciXb6g7IjMg8rSQgxrIm7R+dXD9oAgGH8IgoRSRRBV0Z
	 LKv9PnruhX+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE31C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317504866.23713.1724981105375077370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7a24ef4f851fb579b3f9e46b8b25a7577e9a886ca5eae6dce3e412ebd38f21
Date: Sun, 27 Aug 2023 22:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693175048
