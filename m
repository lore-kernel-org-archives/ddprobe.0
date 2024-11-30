Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73417BD3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732998954; cv=none; b=Ra0nMsiPYZxk9cPsU0DphYrN6uAcPiLy2i/vtaJ4xq3wrmEWCvOaN6a9FEMFpPizpPK/ERgdk9h7TrJzUzGHqkevu/q3qAtAmJ1C+mchd76joxPd+l+oSF983rrfhSjJxhDZ41WQ6cT3XMfgfTgkipq49RQ4eGTNfwiJZHQUKRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732998954; c=relaxed/simple;
	bh=qyTDAHUGIMWGbKUcPMULEQJxBrDH3NGqrm6jARC4ins=;
	h=To:Subject:From:Message-Id:Date; b=KGih0c2FLLv/N+ZK+xFX2G0vTmBI26pFSVqi9DaR/ZDzkepYjRZ6+UyV5b7l/PlLDyNblTA1V5wc9oI4SF7Xy6y9uDYlBpB4qyTz9cxWU/1foCk1XiXLL0tRWoBlkd//NzAwnKDvbCQQx/MSGrbMC8hhGFNS7yLQzHH0WI/nC6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHjsSnTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHjsSnTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8478C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732998953;
	bh=qyTDAHUGIMWGbKUcPMULEQJxBrDH3NGqrm6jARC4ins=;
	h=To:Subject:From:Date:From;
	b=LHjsSnTG8IOqWdhyJV1U9CFpRW/i1XF+RBFjkVbYBCuDyzzg0M7S17LAOOZyecH+z
	 XTgfvzjqjxXRd7h2Vx5ZpVdbVv9Vz7vsUJCFIbCmjnPb4lOPEEg9sjKIq/u9NS9Qha
	 XxdozYuFlHTBpcIOpMPquEQ/hdi0SelNeeFDbXHU3ce8vT/MQWL1VWto6S2k04Vo5F
	 oKzXKJITfurYZI3y8E+jyuzrRpZ3ACbJ6WvLkdnSW8BqDQojQeGS58vYGrx+2tg4sA
	 CK+xHjEa6/SrqwU/Ngpbrmzj1l1mneyjYGUa7ez4dxhF3XaOP/UdQBgu4qyOPGchSl
	 xTSCHHQEhkX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C306D7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299895359.15959.12070380740645114125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e321286d019a8715568b638b82ad20756e6eef113c11c29dd12ef2b75a88010c
Date: Sat, 30 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732998953
