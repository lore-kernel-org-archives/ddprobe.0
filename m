Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AD297A40
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745625594; cv=none; b=Zq30+GuiCZv9yxW5qHtSen70qgynhrjmuBj16lIvrSlQRU8CsFr9sK+YE332zlIIk44vLObig2hYisi2z8lB8ekQdtSyOctjFXwqjROZD7/wk+yhI09/COYcNJ6MtAE5hTU4+EgbtP5pNKijFKbXk6tO3BDF/fxdSkKJP89pzIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745625594; c=relaxed/simple;
	bh=wtoU5jFCB/e/Yj9XlXJ3eZPlN5yKXh0zILdezwUEigs=;
	h=To:Subject:From:Message-Id:Date; b=cVh0qFD9sdIbwczwDiaOduTINmUB5M7TQxX4pt82zn311k3o/yPPbubz0Vz1K//YPhQ6uSWu40QaLUTHv2KyF+8ArUsc21vxHyy+7lSgCVEmNjZvkFf5URGHqRppby1gJfkhzYsKbxePpKS+MCUJnbKcgJTjoVBiGnpONdPbWDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l16UEd/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l16UEd/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E354C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745625593;
	bh=wtoU5jFCB/e/Yj9XlXJ3eZPlN5yKXh0zILdezwUEigs=;
	h=To:Subject:From:Date:From;
	b=l16UEd/5u3SDKrc+n93YLbBC9MtFf3ZpK4E1clZZ3BwXJgXm96AvExKQyC+l5rmT7
	 S/phkIdqWaoFllHi5Bbc0bECq3hinMIiE/fUc07VdFzdVBBr4y9K/0yMK4v9Xc2yYT
	 iQYg9Bj/AkB+0v5gwyPza6GxNEs2+FC7GVfMrweGGv1iBOX/xSenL1LxDskCYOABuq
	 zIZL1z4WVdUh3OXkQZ6Fqbs8SeH3jh4MSpIofyI3OP3S/bA4mr4lM+BMFHjkxVUHPE
	 eyM+LcILX3I4aOWCxxVC9HkNlRY1ssuni66B21i0XxpJ0T/MfD+S9Yb4sB8vLhXPkI
	 3K2eLuDlMIjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EAC369D5
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562559357.19472.16923202821605556960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f48cac709fd0eeac8fe289663935a4cad5d4ff94a2777abfecfa966d207e19
Date: Fri, 25 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745625593
