Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D223C1C04
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88903C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672372287;
	bh=WWgI/mCvQzeVjbSJ+FvluGiv5wTedGjfT7UIpYeFlBY=;
	h=To:Subject:From:Date:From;
	b=CeGScP/MoO0yCLylRg2WucA9WTOmFFlfU2296CwGMQXkSE/siTo8IJzwxWfDFCNFl
	 JO0UR4nGFG8RZiFcSJboP4S14AwqE5Q/rFZs0HBMZM2rwBD444lG/8iWOsB0V1JW1u
	 zVNzfuESVX9N1zK4Y3bFG3J1vOfk+wzYp53NMTCHGPUEEEJbYc4nV24t1ZmtTr5esC
	 ZKIMfV4BjiQtO1POrAKuit5bZK2U/p0ZitTeaF/62o9D7s2WF9pkpbHj9+xI+UtGqr
	 scc3aXSEOrRqQJTZwt+PrwYNqXkjjDZ5UvQyzyOkOuUREvJb0DN/JuV5mOlFOP9YKF
	 wKRkggjfSdiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD06C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237228742.16437.14920712292348493172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528f1eb63414805765ec9eebc376984cd2777d37b8841267d1d5acae2f3bc2c2
Date: Fri, 30 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672372287
