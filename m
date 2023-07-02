Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D98A1FD3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5559C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688303648;
	bh=bYCg5cGVU3++xYjlijr+j0Ly07MhubS+0i4buapFw6c=;
	h=To:Subject:From:Date:From;
	b=UqS+DsR5WV+kzKD8fDafpptGBNvpDCmWwij3bkAj4FO1SWl0yjR8uz9wEqvfdmgVs
	 5OLpihN8LJIFFuBoNJ5s20M9EQyskVJ175LWRMF8ygWOF5Fbxu/skyURQFEXfSleGg
	 gY+ZNaElvk00u29s/803LCBL7EhNFfU/d+nTNdLJAfmfTcxlcCgSi7RHbPmkFahomB
	 yd+BmsGL1X87m0AVhSuaC09RBQtfyXxIQS2bTfNoTp0XrkJzjNe6egvv4VFK1ervwm
	 qZx9vgBabHxh3QzgqpVLZtnZBTtosf93Q+rNkszH39EeZGc6zFMjoy2X83ZHFgPTyL
	 hHZl1QJjoy+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EA4EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168830364867.13370.11003437339527803528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f80c41a2d4c1630d76ee8f92f1d5f2580d9f2237a13ae6d48d2ccadeb83e1f
Date: Sun, 02 Jul 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688303648
