Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56331215196
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738686354; cv=none; b=EndWUHvObnKG1m0tiaH3xnjkLaJjyJnBs1VNF10J9u+QO7GLrXOgVLiWMzjzBJ8VTm2hZC0KLjRnpZnYgnTQZNchGsJQ21wzttk9aSqIZ4eQwK6H7Rrw8wNfdel3NNPW/CWo+JOLDWgA7QvD21eJh9aSUEEUcAH8O3ekR6FlTZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738686354; c=relaxed/simple;
	bh=MQKNFa3NMZ0/GvzG6Ri5TSREUkXoYMsRMkl6f21VZcE=;
	h=To:Subject:From:Message-Id:Date; b=fDDHHQ5I7IDDSmcappaL3XqFyHn16rUtMjKnV3Py7As7HBD4thuPUJ4Px4HA+/xLumzX/0uruogx6xlKC+fkBJbWZXRBerkDU26lqf9a0/VZxCXBFyrue0Yj35w+iUH/uz0MyTcfgYzKgVkEmXP/zm9nL+o617a9/lAcDspc1bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkY22LrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkY22LrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DABC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738686353;
	bh=MQKNFa3NMZ0/GvzG6Ri5TSREUkXoYMsRMkl6f21VZcE=;
	h=To:Subject:From:Date:From;
	b=TkY22LrC3MfaQdcOG7FfjBF30t5/3C5TFAMuXAYSPBxiWtn6PQTdx+CBdfYfOx46w
	 F1yYCBpWyvt6YeaaeW4++T/4Y7GXocNuL/6VNe0tqnjY1ADGU3WwClZtbd8+KQZRVE
	 WBXTM0pLQTjWeLTg3qzK86pAcY/Dds1+zcTKFQq89v3mJleGK0WgqkugwCYspiSAqX
	 yKEq+mXJuwEo6pgMWx0XyyBUyihPnDHya5xJImzcSGClR6Dxhq1MRYU3DNARQ8QXti
	 CyK5mkW7WhducayvezRWheTwCTVofSFmk1UnGZaEG7ybx4Um2tcxrl+845JPkkh5ph
	 qaJoVzaLOBdxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5EFC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868635363.1990.12719180995522983708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693e53c6106cef0c94adee7b1c0cc9fa15fe2fca45f4296abec8301eaee911c9
Date: Tue, 04 Feb 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738686353
