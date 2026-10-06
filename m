Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484773A8736
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791278434; cv=none; b=WRSxYRfj4q1MiDH0IvD4p3PUB1+I6DP3ZRMULzfbtUzO/QzAIpbCGit6L+wt3TxPABc26Hwf/LztR5uAOvoIbwBpKCFV8YayS1KVj1SG5QWt9jTk/sMtQ6OmzCVFPgskPxZHb3I+19+Y41jM2z+YgcoltsIIYSF9jf5TpTSBVb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791278434; c=relaxed/simple;
	bh=aGkdLjEF7T8x9mjjhstGwrVmGyzz013lcmkTm8GgKss=;
	h=To:Subject:From:Message-Id:Date; b=YyyG2geB+xdr2VilRJn+sIe6P1eevE2qv+InK3uSzFAkJeJ+5vGBbCE3vFN2mdrWGj0TGlnaVQ068YclrGI/4DFQxA0FT1fyIPKhrH22ZRdhXU+LSl/VsXCHH49bX6EloR1RFkA3RmBmqVL7FnmCa0+Ky8O+ClNklTi0PdjWAzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq42ngQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq42ngQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF2AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791278433;
	bh=aGkdLjEF7T8x9mjjhstGwrVmGyzz013lcmkTm8GgKss=;
	h=To:Subject:From:Date:From;
	b=kq42ngQUya/vgxOLWY8HH9GqxPxpuWBINpao1oQZ1/oNBo7b+PKX0NDKp+QXPeeIS
	 Td1nmAztFVy6DI05BVpYjccDWjJP1axHX0FSusZp5fPVZKlT8jNYHPflyvPT+qnqth
	 Q0hFUTnDJ2blPzkNOZOc8aiuimUGRNza723X1HRxy2ebkNAIWZ2DyIsVPJh2qpT+GF
	 pslcpg9BGLFP/NnI0n/L0GrztO1txz7lakWQ8ZgXgOz9iMX24yJbPZn4ANxV6kQmq5
	 RN/KHOT9J762/CbBpwZLJSjAo0D+gdUJRtoLdrl5xHJjsiFTuhRVBYIxNToANDfmMy
	 hb11JAOhLrE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E18CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127843368.27778.2615690508362691220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa16124cb8cb930b458e21b81a2b26e074016877d4dd08970477c88b84a60697
Date: Tue, 06 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791278433
