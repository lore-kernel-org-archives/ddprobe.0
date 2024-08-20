Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE9514A4F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724196954; cv=none; b=h+lFM9UfUoCpQwScSY6cYLTt0KoiBHBpRvjGy9QUpsazoSkPyb3cjX35nY3m7z0me+m7YsofRKivwRarbDSa7mM3W/eBbx7XzdJEDzJDEE0Ef5isRxIS+/i9cLgGc32Ftdau4+sMTKbtdqUG+1ofPTaNyxJZZzWaqiiQgypUfI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724196954; c=relaxed/simple;
	bh=q+oLTGYcEL19a8fVQzW4E+AwxSa5Fs+L8N21QuRaczE=;
	h=To:Subject:From:Message-Id:Date; b=n799/Ceitrc11SZwo2eP6wjS/DY0zvT3V2QlHr1Qsvd/V4N+k4ftjSwjukO44vokzxxuc77b+MDjyl7fV5joWOLNVSpAm+keYlaQMGPDADUyxvLBhsVsiaealVMd0RZcrRBOnM0mOEkhzvKotEbR4yiZYs4gvD+j4Q0WSYBvuvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKUfJoi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKUfJoi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724196953;
	bh=q+oLTGYcEL19a8fVQzW4E+AwxSa5Fs+L8N21QuRaczE=;
	h=To:Subject:From:Date:From;
	b=AKUfJoi3Vmf68O5rjQGtW7Uzpi7Gv0OEIyxMqCu6FG+63jsX0LDxlL/eRLsqZh2YK
	 6rQdOVUBrv2T020IQsyEb6g5UvnUpeaMzjq4YFqjwLkkP4ijvQnKzROaTc1bQoR+xh
	 s7C4X1P8Za0l2klmkXS25eYIdgfGlpNy0ltBQoSxXwLrqBby8CCdffPcRL+q3aUFxd
	 2WYXJL6+OtAy5kgbnt4JSj94Czd+PK+V0GBSho/wIE/Fj/O6Nrjxr2Rrz+IzFEObiW
	 9IXCdkO7MhZRGRHuuJ9dNUxbap9QNvpMLmLyNebr6E7J5+yJwKE0C0Jh9ADjCd5dze
	 TfPS49EuPXqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97644C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419695361.8238.2502496037453118239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1451b0bbacdbc4deff684e3c41c20ed984f3148f0cc376b145199ce4aa4ebbac
Date: Tue, 20 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724196953
