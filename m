Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACDC3B71A9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781562394; cv=none; b=H4oWfCmqSxEuQ66PN3TrWJBuLb5cNQQBDPqi4ht9dv6xwtQVYbw/UVIcUTozXZFmg932/b9kJt6UpdHpbmrZO7DiygJM8wmCjJvEM8Ujz4evi+P+XMlfwOnaT0jGaI+8zTaTMs3YSYuxTZIFGe3/ZJxvdCloDVq8Jlkl4l+vq6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781562394; c=relaxed/simple;
	bh=xG+T54YCwdP5C5mqMXvnppcFRHxXqYUYUzFcDkO/XmM=;
	h=To:Subject:From:Message-Id:Date; b=oFE6ynXKhpjs+7i555tgNx7LCMgFZzJ0rJ1kkGxFrQtHjooGnWLYomoSH7sYZ/UpNuvocXqOCbUX3JJY3A46WQuVOYX9Gl9J/TP26NZK1S/YFB20bvPYj4ZJJEp47S+DsdAi2SlKqpQdw6blBZFdJyQb5UCf00j0McL82GWdu28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK4lwSZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK4lwSZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B94C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781562393;
	bh=xG+T54YCwdP5C5mqMXvnppcFRHxXqYUYUzFcDkO/XmM=;
	h=To:Subject:From:Date:From;
	b=VK4lwSZDlzKtMd0ri6W9O38T8V/GzAXr1b2BhC3YPpVzSFT4SA1aCFY6PWFtVznfH
	 c8yb/o17R/70ma52yLr4aaf319NL+6mRS6ysaR4t0wuI9bSpcpZIxsXyp8bsyCKsUm
	 etfy6esKV6BWxQwLuIkG1fDsbOkY+82HQSNdJumYYPRvphEE4v2alkaCMHntr8Eook
	 28kQDnoLteFLmM9dYEhQgKiCvVGjW0wO8o0W+MblMtxJkt95R6LEzhI/sKLxajLlFd
	 9q97d7qpHGDPr/QY0sRVT6nsrSI4/8xTWZGZjeXrD9nOtpJzypqZc/3NAMr/fG7Ioe
	 GUlEPF4cCDaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3685CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156239372.32720.8648352199938569734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbc2b7957ad3e3d86ce10929f065960ed8c4298418da98858a9276d6c265072
Date: Mon, 15 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781562393
