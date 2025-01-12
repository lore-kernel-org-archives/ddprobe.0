Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD751E526
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736662554; cv=none; b=eE4DRrhsQCAT8v4IltXdzWo2YU08htV/5YCcqJYunXeS8sYhiiNRWj1c4wD740+1Z+e6cV/QQLKiwULlAxtlTf1FlV+i4wV6KXWZRDqf6vye1He1jMyZYExdXaS2XR0PlbVfXAxeNOZIHeWmK4uKaw/JZW43H4H6jvYV95JC8eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736662554; c=relaxed/simple;
	bh=Xyvl72NRnTajNC4vdiRdsCbyghqUcXz2yZt5Z8dWswY=;
	h=To:Subject:From:Message-Id:Date; b=fxcn0BMTI+imokPfW4nxid78RTk6gwEA1uTaTpHhRvxBC4rZ9JAIB10dynsOB6NRYQY3CiRobSif1pRudsO6vzVJ7zGSwVhXl0fLj+xCjuygXzOnpg9Mvt6eZLLfkYmGz+CfI5O/iuccw0C4a2WxoJAihi/Ev6ZsT1YaBeeFqWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsIkpYtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsIkpYtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C97C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736662553;
	bh=Xyvl72NRnTajNC4vdiRdsCbyghqUcXz2yZt5Z8dWswY=;
	h=To:Subject:From:Date:From;
	b=HsIkpYtkAMCKhDqAM7MctIllrhnPPZHKbeAxAHYy8aCEgTe8nNgCTKZwvsoddOImX
	 ntMTChgKekYkPDNakrLRVLGrvS0upAKlqGSY93VZ3ZEwR8+6d1JhIOqi8BFTCmL79/
	 g/TvhC4O5R6U1R68v/skhqun18Rqt6R/e7NBlhPFaftQOQVw3rdon5p0eu0Q/lYyl9
	 CZp6+c0uxwmbxKCi6jUUdPTaz6wC3vmbHiTQnWWNDyyF0M7StzHQOgsWGRryV27kGF
	 GhqJuWTbVIHbSEUfqt3DDeS7O8aSDiP9PsyeYiDXz+tKY7nS/uXaY85VyxLLmdbNwX
	 u9LKid2oifc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB3E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666255358.32581.15066054879970787291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f471302611096644fd8bdc9da915b88e5fc3244816dd44f174afb0671271c190
Date: Sun, 12 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736662553
