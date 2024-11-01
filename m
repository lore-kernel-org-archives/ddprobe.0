Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437A19F409
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730467553; cv=none; b=VnqT1D+IEASOGURfrc4fcY/TFDM8m3E+3hAUUuoCAfpHdp+hc7SJ8oaIqjOYBJaVLvjuxA1rnrxvy01FaOK2WNxrbxzu5/sNDAv5ymxmKLTkvjcEM57QEvxm23vMnVG+oaw8YMaVPHd2DTTq+9Nv2Fbr/nS7bwleKFjSQ3zvQ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730467553; c=relaxed/simple;
	bh=VaSD+krsTYVP7InVuPAROVbSzhrKo3oH8TlfBTrWj9U=;
	h=To:Subject:From:Message-Id:Date; b=AlTMRtlxadBHN7CLR3ZeN3oxIUJT2ZiNprxPsfApigC549/uFGhPb7fzPLEqIVOqeebXB1ms7hYRboimCw32Vcb3S629kPBoqkGfgbKsuntfuhGiHIx3QoTn+RgFsIqpLMteGjcYXJrqdqjnv8RKMU8nWmS/Yfpr8JwrplaMqh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyTmsXr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyTmsXr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5216C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730467553;
	bh=VaSD+krsTYVP7InVuPAROVbSzhrKo3oH8TlfBTrWj9U=;
	h=To:Subject:From:Date:From;
	b=SyTmsXr/iOPVMaOQ1PK6S2YyY3xNdyALIYoMvuPy1VBPY3fUULWcMGCc32pO/aWPD
	 LpJmRyAKmG/fG7GJXGX5GR2DrdsLAjSr0tpvn8KvHCBEUvMB0VTPlg5+gwppZO1qGZ
	 4UVwRV9PkL23Xp32kiFU2TYoCRkbkjO2gr9VHQ5Weh/aT073mt2+dxaPFbADa2NGGj
	 F1bddcdz3kQNZT7Wtf0jCPVfPdDlYSQYiyvOSBKEMUXIz4bfV6T99EeadaopG16Vu0
	 2PW6m9aGNbzA6EObt1otjTDHYsHIfDqumffw1vDZw8ByfhdVRuyTVdq/LPzebhc7uj
	 Ud4X1UpwrRnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DE1E6B278
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046755366.24477.14633616227441020444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcd05299f2153a26cfd33248a8ddb843dfbf38245332b606683db46562238ee
Date: Fri, 01 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730467553
