Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8B337646A
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778875834; cv=none; b=RAE/niwlFqQNwOV1Wjx+oW0/KV08/zcDXOUqoVsUjvj3EN+wB1aRieLIB5802vuYTpbQ1EmA0mN1u6/jJ8IaLxIbCe+6Q/NsvYzMwq/Pakwv5Qgd+xP0UnSA/rF0c6E41RMutOHco5sjzs9qS2e/L4VIp9UnCtCXKWM4lRsqLJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778875834; c=relaxed/simple;
	bh=SIojI1tuR5wfeKG0tbs8FVNdUrhCtsiRh8xRTw0FfWU=;
	h=To:Subject:From:Message-Id:Date; b=u5M3zAPNIIEBoGHo5FylBZm2nwSL27/Y9kdgvj1TAjI/uXCjs+4Qitgymb1+n+lGzruUc1QCu/bJ+rAk2DvnRyK2Zb67PjTyVBhU48Dke7ToNS/NzsZXIA4+0FvlrKBUPzNCFOvl10jHxMAMVfaVx46jFPvwSUE6vnsp1Ze5xt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDd4rz2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDd4rz2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC0BC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778875833;
	bh=SIojI1tuR5wfeKG0tbs8FVNdUrhCtsiRh8xRTw0FfWU=;
	h=To:Subject:From:Date:From;
	b=VDd4rz2XhsDQkNV2fzajxmR9N+EJBgOj++cHTjNUmyabawqz2noot+JSWohYp2jI8
	 5hcLvsrW88sGOY6yWB9KmXnQFIZul6dfzs4v/wpVhEfVilTPmddqYlAHjfOsjyXn5b
	 G87Gn57qkEV76Sei91hXu+1/xvI87k6GZtDPYX3wP+4kEAO+9jPfqIW8HvDpbY7OdS
	 H19e7wKMIBeUMHlnLdLb/MABNbbFy/WvNr6vVnCQ1FkRW4YjpGxte+NrX+5Cqg5doT
	 eUMu9fYK0cgxPw/it6PqFF3o/lUxfnIUPCl4KQ80kM/dz2iiCGpa7kac2FqWodL5sv
	 JUZ6VwMGIMdgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0B1CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887583369.12398.13245653492763555950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1eb7bf9770379634cb3da1288797c4af8263325e906e51880079b51ef5a756a
Date: Fri, 15 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778875833
