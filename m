Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FD02B9C5
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711829897; cv=none; b=Egb6Q04jx+WYLzlf1k8Kh5OVtsn8OQ4JbxRByXHNLpMZ2e0jL+3hQXSDhk66wTuDyTcvAHLbcDYFCeW1a7RV8ib8XkA6+CR5+oWXrfaFhAwvJ1DLLARVkYcavyRa2sWlXZ2yXMU+eaTGziS+N8xwTAY4aaW/pQT99cyb0Pnx8h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711829897; c=relaxed/simple;
	bh=eE7ok4AuqDUf24fIPQuoWhbSHDcaXnySGtNO5sp5ygg=;
	h=To:Subject:From:Message-Id:Date; b=aVkYi8y2lVINvHMBKiJdjEW+ZccuLIiejW/znBeRdRX0yGc548riQL0ya9EFz+VY7Ilt43vSvAE7BiBTDiC/5WKba4p8t+xywUyWwmX0IgLwKrHhu58dZpxLY4O2K8uAHTv9NqKDyyzKCbWu2cCXHEe6cdtWknHNwk0j+qfTWyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9q6x+Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9q6x+Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8915EC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711829896;
	bh=eE7ok4AuqDUf24fIPQuoWhbSHDcaXnySGtNO5sp5ygg=;
	h=To:Subject:From:Date:From;
	b=e9q6x+YjHWVcC+09fCToKxiMDIOPoRRAXx5Lsi39xCzJiAI+ztHJbq6wGLwNrhEmo
	 Xo8IY5Q4pJXcWuxkm4yd3dUGAjJG4/HadoRYjHBZb6I5JEtRxjocmuEJUxfhZGsSR/
	 HuAlfF9era6JwgDH8Lrf7cmYCxt5oijEaQCapDKB987V6MJXUop3LrnJTE2VcXE8uG
	 XGAbCFhyszHQcYZR+xxfu+u7TPq4e1JtjwAoABobo0l+cE770DwZW9qIy6DqsA1v9n
	 SrZWL6NJeNlJSmA5H1qyVVugBH7VVjc4gdRAotIhwaoQP1e/vYcxGeo4gVfiTS/Lo/
	 9Wjr3vrfnzmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 787EEC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182989646.7719.11431764301423038005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7dbce1bd67a523ded05c2b4037082385ee2021cf46b73a3f30f63a16dd1aac
Date: Sat, 30 Mar 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711829896
