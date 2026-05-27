Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5902D9EDC
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779860554; cv=none; b=iwvGl+jfAFXFsKAMXxRR3KR2Mec6MTbUaL61O1ItSGjQXXUzjG/TTF9zDdt3B2+ugVKlz1hKlXg9onI8n+ENsVzASfO4nx89Vp5wjWHgND1dkOiRLxrcke/02RmUXn0E5xEJ5t8oiprX697I/R5OWNcgYPS0cOhmClOodqVNlGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779860554; c=relaxed/simple;
	bh=+Vx5up8vSkAoMF9JmQ83FUNlUfGO0XfVU1sKbT+pSsU=;
	h=To:Subject:From:Message-Id:Date; b=WFi66yFIV+hO4DDOiBD8DSxXlLLSgOsQFuXZnOwEmoxah9qUjodwwefa9B+0ltbOZkn9RO+yWNNp0sYqMrc9O5suEAcC0XNUzZcD4BUrTESlz0LUlyiXhFkCUoF4GzIhtErc7OaU0clCbhqhpQfxJOORCPiXKVYHBo/vuS4drqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo/vciFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo/vciFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09B2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779860553;
	bh=+Vx5up8vSkAoMF9JmQ83FUNlUfGO0XfVU1sKbT+pSsU=;
	h=To:Subject:From:Date:From;
	b=Xo/vciFA/qygftuor4qSNVkkkSgpJtH6e6KUG3A9X6wlR73N4nTgBQ5Y9Orfn1IDJ
	 2lqqNs9mrZ99zPAf0VuSYiRL9DiL8Hahz1z1WnqeFjyqlgR3XUOBwfezpNng5a5QXl
	 XEXednHiWPk5s4WFPjAReMOmGkfFTRF9Rd5zo05EJCNwzlQfmy5EWM74YJ9PLniRzS
	 La7gOtN8AN/9fShY78b5h3vzTrWl033MXJ6Axsy7EH3Gc4DkDrv/SfEe3MKMowFNpG
	 EBcQyIjhFfeXibAXf9mV6EFm5occkME8YSkD6u/hNAMc6In81PR/GNJPfYAYroX1WP
	 GcSBjoAKLJheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4ACD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986055367.11774.12955498887331449987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a641a2198ac7ceb0db217bcf06e14ede9500a85e3270a056d85a0f35a67d5e52
Date: Wed, 27 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779860553
