Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF22A33F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81427C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671309087;
	bh=1yo+E3TUUu1OVJK9kKBweoyo7vwIlWPcgwBVbklnFDM=;
	h=To:Subject:From:Date:From;
	b=sBl/pwuG68tL0KGB1qtQywrVPm/GJkZLsKkXG24r0TkUvp/Ya3XpPK2PUsAi9Qix9
	 PdRvQaX7IC2JrvTt20iM7pDFxahejqHej/E8gx4m3rXgGgrgcE5RxUqS1JcmUIVJpK
	 8J7KHn0ZW2uLaPPlO+KV4O3QQ5vP3esUq+cpFaEhhJQa0NKCASX8rJmudwFHQmjyQn
	 pbWcb7bTIDN7+E+svkT5tVFsV0dQlSJknaU5TunUnghTZcSy9iJDoi691yxG9Zsjos
	 +nwp3EQ8/YVjSAfIurS6Denm1emIzUyHYUI2ic5ArfzsPk1toZJBhnn3hZfDMLgESN
	 VZ7tJEqaIRzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E65C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130908739.25752.91985528246248521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e1331b22ad70320dd1111bb95c9bd236a2f63800a6ff4a8a687b3396e6fc31
Date: Sat, 17 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671309087
