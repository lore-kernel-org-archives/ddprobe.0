Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5809D1FA1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718976743; cv=none; b=H6DjC8gUl8AOD0I+V5OPUNLTOx7cwBaYWfOTW5ZzpMthZJjtjck9EquMjGGzk0/f5xhEbLHXjVgRGfVt9b549iCbEFI8M6wFxY+WdC0XPk3J7TJ2/1KpUzQE7Tbm/fun6FdP+pZrFfzRPAannwzEyuaU7KTQZG29w4z2Hf0qbfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718976743; c=relaxed/simple;
	bh=AL/is0lCRRiZpDef3sUONbrnSnhgrHDzw4WMEq9QbF4=;
	h=To:Subject:From:Message-Id:Date; b=Xq/tS1jzYAlKz1ntSRvBQ1c9RQbalFFDZ+qTXc2G3bnu2ZV6HIz3a4g0dfv9UbTx2iBKCU+w+ZTf412BzGlc8squCRegNXv6Dwv+BQfvKF+IrMEME6eC8hOesDJ0j1+qC8VPrBi2LBDtD5pVMyxRFkUxWBVuHlF02e1uz8UiIXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVR/2zKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVR/2zKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F259DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718976743;
	bh=AL/is0lCRRiZpDef3sUONbrnSnhgrHDzw4WMEq9QbF4=;
	h=To:Subject:From:Date:From;
	b=RVR/2zKQEAjaNeX5x/M5E/njktWo3FzzjEvw5jbvC+oQydM/9BG1wvcmqYGzigiKT
	 J+W8i77TzycCu0sQJ+sSo1W31lp8Fmu4k4wih7R2Y0j1GwYExdr1vUM67q3Q/LJqND
	 uwf67Jv4pvlVkeN7vDzqUIOX2RqKUoKOPf9covEY2Xg7OTMPP04bN0YFxBM3fhrcUH
	 5uHDZQIjWZ90wM8HY/PdGx/Z4Xke7TeYHV+q4Q6Norydeq9lPyULgnznLAbZ2fF+MY
	 ihv7LEfjBL4Ma1957AsyDwhJob97ZdaVoTn1xTyOYjJMEFCejUNMmTO+XF41bLehA2
	 T5O42vctXoTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2564C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897674282.770.4152686695093826653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4437b90f74b3247ac7833054ea85b0847fed6fb2c8621b0b53609838568dfe50
Date: Fri, 21 Jun 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718976742
