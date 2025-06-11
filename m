Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCBC1DE4CD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749673193; cv=none; b=iRtj0tlwjRqNZUtO4aYlEfnXh5fGUKDLXbII1Ad+vBjow17/syg4JyEx4vQn3lSUK9S88MK6LpAOK6rX9OH3DcHWIhjVTyBk3PDG9+E0rtdN43JR0Nt1E4sqp+qHpl1NzqClkN8f+mTfrlVhdoel2SYxFx9OtawcQBhvvOMSY9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749673193; c=relaxed/simple;
	bh=9Fh4V41YWl/wwCNmIKQtCl2LUgT/yxwdb6AWclESyiU=;
	h=To:Subject:From:Message-Id:Date; b=UA2dVuZy1q7yX5LT0yh/Zcn3PkiFWs2o/kCANR0VV3FTypak0gBj012aglo0qtZVy+LjzpzEYBPFMNkoSQHOb3pDWFCMdiqSSL5sYD6IvFji9I+5IA/HPzNFGYq1nS6w24B8JnZOoFUbzQyw4bRD4XwG6IsLqgAfjEu/3ui8JJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA8K3fqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA8K3fqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DB2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749673193;
	bh=9Fh4V41YWl/wwCNmIKQtCl2LUgT/yxwdb6AWclESyiU=;
	h=To:Subject:From:Date:From;
	b=IA8K3fqRX0gvUDW9GwAbfQVXpDI3xmoi9buIrdl2417USZJzmqB/P59OT4X/cmh5g
	 NFkaYVh/cj8UBHsjWE7kYsjUFLZmYTXMD21aNOeiDDkModYZ/4TjjunN24h4I6sFqS
	 ZI5BACKjusyjP7fjztzxrWjRAyYLHJbPyNqvQwM/yJ1vqlBSXXrY6JHpTtN18znHOi
	 m4zbZ7LIoR0yaKIN5G675ce9uOG0P9l0kdtpXismS+apHf+ZdBQZ6IvfsINxNm8XbA
	 rKQxp0VEfbYhfomdKkKg0MU2qbRj5QgroW9Qko1MUaT9GRWVA/gC3lvgUg+Cz4mYRq
	 BBYShyWRkvtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF4EC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967319363.18512.16624527446161016718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49b9fd75b6da277ec3f38f1056d07156619bdf88076dd93b7245da118359ef5
Date: Wed, 11 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749673193
