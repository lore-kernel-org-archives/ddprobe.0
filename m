Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280AD2309B0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755383994; cv=none; b=Cg+hwYojH0BNR8bVgXUsxm5AWHpkIEUEcbVXGwNtJwbS1G+dFihgABKkjxhy/bQ8zZjXazXrWdhdbF3k1ufO0FSIcJ+pYqwKVZCI9zOwbcGgx22OAbTdJytWOIr+k09aHHUG7wovmAtPlj1WK7NRHkUzrCEgR+YW75eAJJzJPAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755383994; c=relaxed/simple;
	bh=UFTph3PVIcdJdYQKobgTFfwZKcz6G/aiZ7i5WNAlW6A=;
	h=To:Subject:From:Message-Id:Date; b=OOjZ6HX93tTCL220LTEuNgZlhaWizgJxdMReXOZLT3/80j5IjF5Kws1/NBV4Le90kZ1SLKX9IsRaO3Gtjjn6pM5vzAq8M26FpC8kYJWMVeI7AYMimRB3XziOSu2GHJ1u+jxXyI1/eVr2i+tn4VLYt/fItGT1ajVh48D71NO3loM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+gSwHko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+gSwHko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F385C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755383993;
	bh=UFTph3PVIcdJdYQKobgTFfwZKcz6G/aiZ7i5WNAlW6A=;
	h=To:Subject:From:Date:From;
	b=d+gSwHko15N/P6120W5B2Nvd4PDTr2q6KBH71CqF0PxyYiOEMUOE60jO5MKMRVYLK
	 fX2PASD1i7LW4zCsYlU6YPhfrJc/Xgzfonv9N1BsuZSKe7PS2RNfnSo+/A+y7HT6L0
	 Lq/rYgAcTlhSgfynKDn7cK1HhYsluELhxHw/nYdgOkumQmurJrL+4lg8Ttz1/vWNtO
	 s0l/9S72LnXEOWH6AnLvEJmHaKdU50IJ32Gqce1JBCmGTORvbdmO0OF+pMbIXGvkJV
	 SamfXTVQ+fDRaQLR0lwcgYKxJmJfoy7kzkxCLMb84Q3VoFE5Qg0wGaDijuUwqLqdlG
	 pp98mlRdYJEfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED05CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538399357.23566.8844641564077607796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a72cfef68fd6f7845b58300188cf25c670e52924871b46df113b2f8e93deda
Date: Sat, 16 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755383993
