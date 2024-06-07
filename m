Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F2515443F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717752443; cv=none; b=WvRJllbddI6Ha5ExXr6nY2GIvNAxiGFjY9AcMXagMNTUkxPMV5cKJEh/SGWjV9zyXvn9Hom7HevvXwVpdG3rgfePOLR4VOE5EaW/CMdC3SIo6h/TjbaSnfLN6ab+minpAY+z88GrmDcxO5e/NbVB67dVGk4iEyeRgql+gcvBTKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717752443; c=relaxed/simple;
	bh=6wfYqIBbstW0nf6PW3JHAxDSxLxJqGYzIQ21may4Mfk=;
	h=To:Subject:From:Message-Id:Date; b=PJ509ksA5m6orLokjJA+ncHQsdJ5Xp/Xm3cqLZORMIj+8ButCk/wjD/uluRxjiG9jLlqOLfO9OKPD7I5r0YeGxf2V+YNa+WryJ/x+F45kfk1XqXVcLtCwN8XAg14gR7E8hN/KyjncHvysJ8OmJZ9LiempR7CVzOuXEITdCquaFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RASlM+V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RASlM+V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB26C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717752443;
	bh=6wfYqIBbstW0nf6PW3JHAxDSxLxJqGYzIQ21may4Mfk=;
	h=To:Subject:From:Date:From;
	b=RASlM+V/nVLNhWRaB8vgO063coIdpRzAf+ksuZFVPXggj0VW/nTJAduNv/lppKx+s
	 y/RioZaJ+5xJT0iu4WBR+uHbMtxzImgtHRRjzZ+Ni2XshI1jseuvibrdCLF2BUml7f
	 FFELJNPoV0TnB6z/FNtWx31gd8Xa/qxkJAiVTO4qAMFzZxuJdBf/PoFUNKlZZADXZZ
	 KWTSnkO2uxv6YZLxvQMle4Pf+k0+/S4XFy12Y+yzWT0N16cFjJvq+tj7PmS/0xlmKF
	 QmPf1HALxFDQW2nE56IgrZVCQLq1ub+NxWfNeekfmR+YFe+JPS93pXWLDjJ8i5hvUK
	 f2vlIJ9632HkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D819CC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775244287.12494.12354076499857421585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c5733639fbed7d0dbe4ebe389793c7dcdb80c98df221cdf9e6e5d912e4b293
Date: Fri, 07 Jun 2024 09:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717752442
