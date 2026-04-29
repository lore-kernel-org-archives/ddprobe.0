Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBE8378D94
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777500454; cv=none; b=PoBhJiAf0boDtHkcOxtMciJzxftTycLINqEvJNHeIdmnQo5orvjslq9aH9cjKhboq3Q2WxSVzGrcQ0xmWbgktaFTIgBzHkEYS5plK9HpEsiAg7JorvyODdKEVwD87yseUMOaykd6w0E5Tw3deqfjksG+jqhFPgLLDcuqSGv5jcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777500454; c=relaxed/simple;
	bh=+jiH1g8bMbDZYIwblLRp+o6ORaiXQ4sW5J9mJN9Lh0E=;
	h=To:Subject:From:Message-Id:Date; b=OX/xfPxE3rkbCyJxoofVCLbqdoRZp1e/uWw3jbnemZAcEgiFdncLWICWk3eXj/+VE5Q+t4X4e90+kH+Ob4hmD9Tl6rYnTujC4vSON/ya0DwNtb9+ZSh3KS7YCT1lT4sScpE7dTzPQIa3xo12DER6lIgX6DfWPpSEHIUy+hiu/Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8HIhcHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8HIhcHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF6FC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777500453;
	bh=+jiH1g8bMbDZYIwblLRp+o6ORaiXQ4sW5J9mJN9Lh0E=;
	h=To:Subject:From:Date:From;
	b=u8HIhcHtS2SUn7aJ+8n5Q3yEHEHuKzAC0Ppk3CM1dx8+YxdSRR9rV+Fg2bSKwX5AO
	 QcrYo3XhII1o6VyAIGGScWy9OLhqGqjoXmPi8710gwAPCL7cZ/AlibEF50rC/MZba3
	 k/dyRRQqnhNlQU06iaZmIungqBuzpBvH/vNJJgdpaKd+aq/dm+uK7psSGkXheAAQXV
	 rGuty79Mc8z5e1Ln5uXOzHElGNS2qWSOmaO7c5s5J/4RhxybQagu7kMdE66WcVlSWJ
	 qx4Nk/QgJNkVAZ5Zd/6UCG59cGngtMOoiI7irM6eC/SpDe/sU4+djSfn1NOtAfrZdq
	 adSh6Qnkz62RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF811FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750045368.30490.18371849350392567126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd80ea9e853517cf4b4fb19e8e568f85bc9d5d26210b68d2480daae47c6b585
Date: Wed, 29 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777500453
