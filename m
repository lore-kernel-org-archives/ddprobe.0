Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9822571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB75C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670781087;
	bh=788gwhtsPpQjrUmZfVI719zX+ztktb2VQmj6sLcmiV4=;
	h=To:Subject:From:Date:From;
	b=AfWxzNwcfYtBL7MN1AxZ12SEilzmnFK3GZLmjMiNBmspzmgWRXQwwtV5M5x589grT
	 Sn5J1TtD9+7Q16GzdmZRAIDTqlA8YUrrZN82vYejP/VrVTqZWCZqRyzwDZ7wleS4TX
	 rGwiajGAM82cDEhp+UfXjRCDp/Z54TWmWaU+rd2c4734OMePQlw7qDFkVMVR5rjBCr
	 QeebQyGhYD08RM3abDDuaK/CIzbIJU8vaPugmaVdgMKmvU/YVOyvg12eMrKVpIrq+E
	 5jHTo2MHHp9ZIcLgEL68nuEmkfBxdX8mvoaSGmqm6JcYLv48Bva+1zn5LNT29rgRgi
	 40x2VjH7xjXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B848C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078108741.17081.11096894795385329639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b1f4cae1f2dc5480108966aa00a7c32257c6f9c4588678ae6dbdedcbe38572
Date: Sun, 11 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670781087
