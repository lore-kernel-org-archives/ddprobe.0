Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C4A261B77
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762867194; cv=none; b=seY4z2mCCR8if5SYA4MkiWTNWz/KjtwEzkg3nTPoX1bGVdhKm3CE8lb0rGJ2Hy3Ugsdl51j8bZGAj9Jek9O9BOC+BCO8FLNB7Vp0rBpzWSwmCx9O3hwTh1z1vy1DcJvbBo/g5iQRAGYq0RomkLki7sWaxVHgaNovKAFwBFZsRxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762867194; c=relaxed/simple;
	bh=8fZ3kDSN1m3ukkHDuER+UQP0hFojy/CbKsdq6pIIYXM=;
	h=To:Subject:From:Message-Id:Date; b=DRkvU5YQnhrdS1kfdDnfWeoaqvSlKUDFQqtnM8LbA6fYZ3EvFCjONSlFbbP9RFY2/IabdGdImA5C8N3m7LC0BlVGx1M4k/fd3o63ufsxP3C/voWcle8M8+GbOUmMeaikh0N6tmraFip9/f9njZ888vo0p8pZs9L+EQJ7m+gPqKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVajFHO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVajFHO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0442C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762867193;
	bh=8fZ3kDSN1m3ukkHDuER+UQP0hFojy/CbKsdq6pIIYXM=;
	h=To:Subject:From:Date:From;
	b=GVajFHO0tieT72dV/7dJ7+6WFBX6t4WyjV6yC+DLNr6FKD9a79wdDTc2925KIPQYN
	 JFfc1omoFb1cQYOe60Fv5zq1itLGQvB8wJVhRMrOjchAb7aEDqqIxiA68+qf4/BbKA
	 mqxyA+McjBa/Wnoyv/9SG8k+tdNhPX202phTxfrZGfgEz3os6zEjriueUbig+2AA4t
	 eocJkbmoZOJSLZLbHeJW0BvTovXJfcLkUnA5Uxk/TBClsaEOXatklXfaiQC/OB78oJ
	 38UMeEYKNpXEwLVaTJAiAGwM87A+y4Pq3F+eONEiHyUIaOJjZKppIa1GE65BmDSbX+
	 OkJrmAinUYF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE2CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286719357.25331.1926867162653358248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a384d246334be143c36a463762fb07cc2d35473cd0bd422b8e26079178bd90
Date: Tue, 11 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762867193
