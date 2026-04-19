Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3419E2DCBFC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776638254; cv=none; b=C3V0oWeKdaIB+ju0aLghXC3Qk1vER0DSXVefrd/lyGWwZ0b0PlqYIp/BsB9HFnvuJd9jxqjp8y5gXa0EZGanb7qHQqW6gxVYutw082EQzAuF1+PyquLumA1ZTx+RGXIiFDF817ow3XUjcPqODIbvVpr8rH4Ko55YBp6ZZGLtzVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776638254; c=relaxed/simple;
	bh=Zl7xCXKcIEgOiASOeXxJZuTOUwGpSodMnVyzGYG3NN0=;
	h=To:Subject:From:Message-Id:Date; b=B+F/lpzSgL2cHhvyGMScEwhe5hYTHL89akcsEhHh6P/GSdQ5UXFRdZQbf8I8dXGzDY8qIfuvdJ78Y9u5/yUrJG9Xx5v45S3gNxY+F3+xPPWmhAhJnYuVFjM/XU4mwVcw24ACYcGSCnLKAstLvGpug8YFx+NGtOkcqaLZJEmqU+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0Ezqxv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0Ezqxv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10CDC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776638253;
	bh=Zl7xCXKcIEgOiASOeXxJZuTOUwGpSodMnVyzGYG3NN0=;
	h=To:Subject:From:Date:From;
	b=S0Ezqxv/Sr+zi7i4pgqydZAy92SUNnrgUxl6lVbuExIV491ncZ/M+tgcxldjdQ8Nl
	 0OP8qQpOXhFXbpzIGx7Z8R1LAdlZpi7Q/6w07VJdjovPV9Zjf3lMIKZk1q3FjzDPXl
	 oju6Lp7RucyQwtXh5t9GFsuGaolrj3k7jqnLEkBYLLA1RoPxqRCqJZPpw6m1U2QFHF
	 T3kO4VJfImsPNv5gMt5KEdJjAV+nqmWlDMyhzZZHalkIP/otU5p/qomscc80KCYSIf
	 lyuekhSPm+Aox8yraIp2P6jDqrp6cmXKj/awx2UdKfMYTGyyBGN4NVrtMA3os93D8w
	 DEcPkfGTEUo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F1EA71AF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663825368.19101.13337533988012193137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6631c33eea50575425532dbe0e443e78511d4eddbcb9ed5c9558f8be6409f43e
Date: Sun, 19 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776638253
