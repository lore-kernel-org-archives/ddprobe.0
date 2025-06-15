Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C920ED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749946794; cv=none; b=k5U3MhoMGxqwji1G3nSZqaHbCyktXqSxnPO1eVQkKjO/qfzgI+jSiTwsvPbBYe9vJzoFaKHs9PmlHntqLUeXk6hO4fsUd5RMz+yYI8b34zMEwHsEpyKG/y8pZKaAsNgH+FtfWIntgNj0PGX90rNORjwfqggXg3sqvKwD/gpcm/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749946794; c=relaxed/simple;
	bh=ChncFacfl2GwBTrBtFP5z/LoWPM4b5UnKvcnrZdRKSc=;
	h=To:Subject:From:Message-Id:Date; b=WzbI1E0qBIyd9ektAqD6tZRf+6KuuSIePdJ7U68irRdLoREN9kjbn0y2cgaAhSPgn9gpdKJxR+IXgzW7dlVUehiZu2G8TfhAYv+V3Qlf/5uJaY6st5ykWGEZDjj66eu+Kfa2qLviUMjGvMF5vT8tL6nwoUk0FRyz96t0rv/mRsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdBKETRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdBKETRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749946793;
	bh=ChncFacfl2GwBTrBtFP5z/LoWPM4b5UnKvcnrZdRKSc=;
	h=To:Subject:From:Date:From;
	b=bdBKETRWz/gMe+ZE+/2dACKyJmhMi/5pIIYpfABvVUMMVxxdI8HgDSOiOnt5/oVm9
	 O6dEyd9xpbkODdo2jwrQjQYMSNfVcXWy6gRPLjWYmebcsjKkBnlMZYqt8SgqHyRsFj
	 Dzqp6Sm2eiKwwVMHAYOib+Rb05Nw9hTfTWRV0bAOJN7meV8UDr/oM9RtWgqU+hlkTv
	 2vIee2Mm9/DOves2mCyUaEXeXFcvqtgh+5LLwU6Cdi2Z90bJD/YvgOkTL2fl3zIwKf
	 NmNV46vor6GaAfLJ3jnQQFXHJDxWMJSSg2XhpCpVvFE3JAGK1iF+HjwN3juU1hDu1J
	 asHHUsK+9XfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9567EC7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994679358.14133.13568173996386688176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e22e36d93553bf19baf8a0c3fbf0249ec13fb03c270de0ac0430226647681c6
Date: Sun, 15 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749946793
