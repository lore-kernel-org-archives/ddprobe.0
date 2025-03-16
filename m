Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8882E3377
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742168394; cv=none; b=nL3sA3OAWJD4ZzDs7VN6YRpSOqu0Kisd5jzusrcqmItLyaVGhKQ9aWv5Aecz2OPfBxguba7PfvL62fc8GHPmfZ8fC8WNRylopxbxwrA3aZF6YDzUiCL0TmrhlBIXazRyH0QjaASMQW4HnQRMA8h6DtkJu6eLpwAN4hGzEvv0HSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742168394; c=relaxed/simple;
	bh=HJroHFw5lMpIVV9aN+99WsHt7yDqwZ6N8i2dyEzV/x4=;
	h=To:Subject:From:Message-Id:Date; b=LAcgdJi6JGgJUa1Y0bHt8sNkk5YWpzBYc9UZd9Aayjp/BGpHXrrlVWqjfhCS1ijDUVR6ZNQvKcu9LXJYzwsxoLEB22gpWqnqvsLtKFJEvg/3aZfJsEEtKJtfa/3JIa2gWxwWvJbSC6SyGAyQnr9N5XM2i6dhGw/fo39Q5l4EgBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5hRGCSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5hRGCSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1196C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742168393;
	bh=HJroHFw5lMpIVV9aN+99WsHt7yDqwZ6N8i2dyEzV/x4=;
	h=To:Subject:From:Date:From;
	b=h5hRGCSiL9K+vxO09dXC0jcqrcFeTzk6hTlN1vVGECIhUmlkmOR6XONeHVffgnCM2
	 +W79XF84K+c9XptklvpU3Jd61kBzMfB7JlvYTxm+i1VG0LnNy8WcmRpGglXOUUacif
	 WimMt8UoyZpkZpymhrYUmviWpppkzvCsoSJJVZQ7Jiqu61ZBy1fXxrTAjfIeCedBTO
	 yKTDYK02O76ii8uPjJNNUXprBJB2Cmtf1xbIvN36lpjk01gVLHRyPABEMVud2fr2P+
	 CsU0Q8ZHr8fHSFzTjWowzYYeUp90d+tD7dCNO9cbOQgnlmOdOOonCSi0drT115OnAe
	 n3M3Yb2o7u1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E4C28B2F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216839364.24658.10110659423537541679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078cab612db2bc5936e7a3f93de617b0d010ed6c81b22bf358e4969588676ffa
Date: Sun, 16 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742168393
