Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903CA28935F
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749649194; cv=none; b=JYn5LMHTa+ks+WggASQ7/jD9UMQxoji5FyXjtYWEfGvk+Te9wCY/f4LMv7Yk4cnYQcRu0hfOPBDWHnTbfZ2s68gNMzGzf2Cx9HeDrqdGqoUWc2AjIJ3CUb2gVKGjKMOgsYJ5zvQ3YjRasGW2CEOkpYoHX5sKoDtHiHQMB7YE6Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749649194; c=relaxed/simple;
	bh=PdINQSs0J7D7vHEmmVDv3KaTbeNKK9ucNyYrquVItB0=;
	h=To:Subject:From:Message-Id:Date; b=frb1+345VHyVCBmSFeX9ROGNn8rzJhr1xglKT8sA2aSaka0jPkWjbg9bNSUPU75JZY+i5qtKOtm7hFq84P/e10OC/u3ktjUKUFPmMkrEGda1YM0Rw04GD7HN83v3xbirveZxWhGIf6xU6q9SCvJ/O29P+JoOul/a8qovFLJ4PJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgdWHPL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgdWHPL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A11C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749649193;
	bh=PdINQSs0J7D7vHEmmVDv3KaTbeNKK9ucNyYrquVItB0=;
	h=To:Subject:From:Date:From;
	b=DgdWHPL2MIcuJj1T+Wb7Kso6IuxhbpvVABxqemnOIHpHBOTYcA7m+WtokZOnH4vrM
	 Ns3z72NNgpIpYlbTnO3NG2ddHlsghYfc+JysDT/5CazSWjBqnDepuq2mu0tTXN1bjC
	 SCcvHkXY8EWd2jhH/t9wj1Mi3uV9dlgPdtudp1P2x65B0hHOzIzHKZDBTl1QzXpCDd
	 ddYfUrQFuXMh1X/drkfQg+IZvJuMUfigbPxfzvjzkS4MtY1pW8kYz6y2Vm4TwTyZWU
	 fWpCek0HksP25++PezbzZbJlldyLvFdhMRhhi5m4pkxs5hxWvr+ZvkAvCtzfCQZCe+
	 w9lIuWIn9Wodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92358C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964919359.32161.8115450632565577846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17ece3cc85b16f2dd75845d86ddbc859150c0ea0b0038fc5e63004712514527
Date: Wed, 11 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749649193
