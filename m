Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71409197
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXuAGljE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CECC433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696552028;
	bh=8sKNXzCOwNzfUF8IiQo3Tw98663ZSu///wFedOv1wt0=;
	h=To:Subject:From:Date:From;
	b=UXuAGljEP1AauXhOF5jsM1a01YXpzhv+/oiUOYYPlMjoVWQFEIdFouk6kkAF/20fB
	 mQBozXhGNqr9sOX0QojRSWuk8vsWhVwNgo3ptMBUa6hL9r8TuQ+WvvptTeDUwke0pV
	 ByDhhOZrDKwPWU0rTlakdmy9NvrmAjlJ5NeBc1AY11eF50k3ITbu4U24EfaLjPbjiv
	 gSAz9XZiuy5qQkQChvwtLhpv00EV/weh4TIi/f7kM5Vk8wYdR4Jd1QwbhGkGZ3jVj8
	 5SIJKELjG727G/BXjdKRmfV/k+eHX7My6YH7qbP304EXJqRZyCQQzZJkg5vZ8o3V2+
	 v+CZIAfzwhbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78D8E92FCF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655202866.25010.15529278133651841501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e580f238455bb36ab4e0e1db41c6ad4f72bcbdadc2a70fcf924acd1b470204
Date: Fri, 06 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696552028
