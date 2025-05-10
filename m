Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BF815E96
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746920994; cv=none; b=pBdljzV/zXLohiGnaVeSr1tvNY7xfNjpq8y62ijbf1ihtt5BEY0EYGchCssNm+GYM8dNWd5B28K0xSGaC5cCj/XhrQMdKA1LmQ0L9juIxYSS0ekzqOcDF/SyZ0B2d5PDXj2T/K3ez4R7/p2c70GVGayaBxZ5ForbVBSIiPm4UU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746920994; c=relaxed/simple;
	bh=uPn7ie+T+uCBv1+EXwTpH/QO8hecUpETw3xkd6ZNkxU=;
	h=To:Subject:From:Message-Id:Date; b=s+iUUbWWuTK+6OHbRq8VBi+08nDYfFIeeIKxodTIJFWhG1EwwBdrTuDQxG1T4+OSYJQtmVDQtlTlPO3k3PBYJ4vY22a6k6DmUyQAlNJQawff9Dq1xvo1REbb/8K1jsDNKTvaLpH3ofzfUFKipZUMhYfiKgR+5PhUlR6c6EI3Jmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QusU4XmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QusU4XmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82ABC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746920993;
	bh=uPn7ie+T+uCBv1+EXwTpH/QO8hecUpETw3xkd6ZNkxU=;
	h=To:Subject:From:Date:From;
	b=QusU4XmOAqBNXsPm9J9ayB0JDxzFUqdyOnRSAC/wXi+KAWLftj/IGShKrZu4fq9XP
	 c0ZOf9qyxautWOLlhDJH1GREED2zspCOb8qyKH++443m8TZqnvGOHzqSFLSpNK0G6J
	 FUrRKzLfHEJpEOd904Zu2i3sbpHsRuJeZDsO0tmBE+QsRl6zTL3h27Jvh+Qd76oCcO
	 Hi94YVm1LVdaVxePFKGAc54EpeH8YfSAybWQWVa+HPu0SL3QONz1/DPArU5X6f68sd
	 X8k8/drizAol5066TVnvAI6qVHWB0MMGmGX+mP9Mps/1j4oERhSRM29BKvHj8MoXGD
	 cv0+eCqwWgKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94534C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692099357.8664.8200322890177957041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db0b4dede37d94425b9809c0251a390ee3460f9a8d95cfe3d9609e7b6957029
Date: Sat, 10 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746920993
