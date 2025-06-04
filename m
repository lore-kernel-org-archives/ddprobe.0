Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307667F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748999994; cv=none; b=O9NGP5O2XmFqBSzh96TLDktQ0T0/s9Q9O3AWvn822L6Hwzr8jXLxMJjov2iwtaiWUPWNxxG+jz7s7tWM/9rumMmatJQNcJ22eXmLP99oszFm4g5Rtw5cQFn9HpLzh4DJzfr/bznJ7VuSpI9xau0a38XmtBU9x9x//+QTv07KSjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748999994; c=relaxed/simple;
	bh=UsnUXSuSp4Pvxd6uSI64OWt8fwu8R9PjR91e+2arYRU=;
	h=To:Subject:From:Message-Id:Date; b=qWdFB72Oo2/TbcQDK8aiJVJjmH63qQYvIn3f4tQcOwRPcPn3QvuRKxiyH8EIiYvicJb6lTff8U27M4ou5zTXNE5DZYPzg2RQgO5vkDaPnzlUJVY7P9cVkj7t0aW7QuRavX2tCylhngHXzStnnzZ9dHeJO5uHwH3GEXsAfrBJmMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIJq2yHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIJq2yHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748999993;
	bh=UsnUXSuSp4Pvxd6uSI64OWt8fwu8R9PjR91e+2arYRU=;
	h=To:Subject:From:Date:From;
	b=RIJq2yHfiAiTcffTa3zhmdqI0Z3JkvwOldSenF/ruM5fwiKRmuGu9IDwdlA1OFeZw
	 26sYgjy4z6dfyAFJjrREaEjCOjqrubiZYU2kj3u5UyfTR+C8wybFqWjVne2MM4dxhy
	 Fz9WchxKal2mohCklM3DUgAQsbIPYmwnLDy8Efy8Vf/14gDaMTx7ZH0KqeWJspYeY1
	 957z4jymZaUrJtNcBRzAH3I5PgHUcTz1LnsqtjEcw9UUPvoua2KX/QUecN3Z1Yjk7T
	 Z7M79Stb+XR7ltIBIUhGLckPk2m6G/SlzIIf6fKL+pRqfHkyK084ivLWiC3cGdXxxw
	 tk9ALOy1iUBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F6C5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899999358.16237.6218244992896986588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb671c0e6765b0db569b8cebc3cb3412181736e2bb1242724a7b4b8b8bf5da7
Date: Wed, 04 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748999993
