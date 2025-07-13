Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1879E42AB4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752397794; cv=none; b=uZEfa0BvaNJEI9pBfFO+IMjU8H2HG+GdonUObAsIZb2iCjUfHRvS9g93tb8yZyL++j5DLBl0voQ6FMr/6Emb/yrYzSsayeCzhfttK7HtBQXlmfGsucPE4hdLr0k15TfhVf0+v73Vyyh/Xv0gUvgZ3o3UMJZfO11djXd05iHQCMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752397794; c=relaxed/simple;
	bh=yNiQ02hJtQlp/qq0iMvgDrvch4+2+ZNqk1/WrwIlhR0=;
	h=To:Subject:From:Message-Id:Date; b=BsSztYcb3P55PNG0wH38Qz32LZVmZQQ20RZ6hYqMddv80fhM1m6hdUlQoUTao7x3EIWr9XiOLK6B9Q5O4JqkGK2UHqO14fhMzKJ3Wt/wHJ+xlOIjcj6Sqi24AQHpEvDz5NpJOtqNwwsSQj4wmIbQIjhU1slotuKL0Dq6Kl8mx30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOBrBCQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOBrBCQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752397793;
	bh=yNiQ02hJtQlp/qq0iMvgDrvch4+2+ZNqk1/WrwIlhR0=;
	h=To:Subject:From:Date:From;
	b=UOBrBCQZvj6XyUuJETm8Ay7/8TcK59WXV49wLa7OezhbxKoXXcSH4gYLPY+WBVu4l
	 5GSGD1FkMnMMBgOc28Q0rUCIswe7iRAc1KPlIXU7Cq/aNJWYdzCmnqxM6KCP4wVVBv
	 jxjBPq42wDpRZqo9/J3IOE7avuo4XE3nb55F4yYTGFlEhcuETwFsznENri+s6OeSz0
	 22csYCr2+LvfGKpe+y9sIOuUjryjCXEG5v6YLeB36k6Bi9UB5MPAo3CkbSLnrQzSWb
	 x1FR968IJQE1e0EH7lW6Ha6J5hhWEte5+514+9iA1xgjYiuwjHuJ/lD78v/xZ8m5Xs
	 Gz9IAgfbCnBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF65C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239779357.1525.481514071883785253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66db44331393f34f26dccfcfca87cb459b8d267b58c53be73ffb78bfc98b41c9
Date: Sun, 13 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752397793
