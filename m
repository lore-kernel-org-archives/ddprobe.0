Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2475A9476
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752948595; cv=none; b=iGsfnasUgVWu3tEGt/h1819N++/UbUCRMz7Y+80KT/UFNu7Wewp7oKlvmtveZ3RKg2AR9KXYUIw9Xli9fCZLxgY1UwSQ78OY1vS6I0AL4dSeojK2TiUf27xZ6tmjusYdwnVPu+hHDjINEwMWgW5vZgv8zqX8J2U53nDwTjGD6Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752948595; c=relaxed/simple;
	bh=BI5tf9rBx5usrO2EPZwL3a6XDibz2MhfbsmtHr2xMdU=;
	h=To:Subject:From:Message-Id:Date; b=stWl6FxIlMuU25HdglZ7WE6lqVzs0+DtWMzoKuSiIcheULE4YMd7CrYREmzluUh7d5eJd6ssPNeRpmuxT0rjR9fmwOsjinZik2OzKuHw0GV49bd53eL3bc5r3xaioSt/oQFs82H4xnix2Z8ucBoAIVGFJ83il7Vs2AFKUoA4pKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxMjPqsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxMjPqsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DEAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752948593;
	bh=BI5tf9rBx5usrO2EPZwL3a6XDibz2MhfbsmtHr2xMdU=;
	h=To:Subject:From:Date:From;
	b=PxMjPqsyzFHjV5j21Sh4d6Gckzu1LpIWaP4klbbo7ycFsm5PDa9vx1+UAXDvS+IsV
	 GF2ENkpCCDRZL2/6d9VXjkxpmjsbdAm20yZVFw6w3EX1DsJL8SHtRhPectTiijlN1g
	 DlUpo6inpOlNmeeaJpowPv6cI429I5AoDeQ/VGNkSW1VPBXQgYRapiZxfv0vHi3eSJ
	 k4DPH1N+QHTR4TCUuPge0ZZKq/FkYRBkbCPNHy2yt9H2iRDZGRjtVLoPoJhLII4UAX
	 C/OQyn0QM+qYdcB+Gc/mGEmTMR3X6mkt1j2W4OEQlHvTQ4xyk3aQm058iq0fk3qAx1
	 rhevX6oGZcKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92AC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294859358.7639.3520884189850588723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cfa2c754703e869288e99d1350105cc8b0cde22ee05c03eb90cc44f449fcaf
Date: Sat, 19 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752948593
