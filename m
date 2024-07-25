Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3B919D069
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721917554; cv=none; b=n5RFHtxFS5DDzzG5eOuPm7N2roo6CY1X2Xp9002hJ87sQKroRC4supSDsvcDAe0f6VoLo8kofTA7obvAni+jmcHXfIkw+GBWL95oIQLVMV7Zi0PetMuSy6uVzZO6HSkUwNDIplZRXZRa7Os4ZkQhqZSRmgzbiymEuAR0w1ttY4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721917554; c=relaxed/simple;
	bh=EBmW2JKxI7RpuFlt4yxVV0PbBcD3HM+TyAh9BqzepK0=;
	h=To:Subject:From:Message-Id:Date; b=SkyVjCN7xnsaFjexrxS0ph/wMjojzh4USiVypUCGoVbRb8uOOobcmqE/Nz0qh7p/9HQ6Kxw4xPtQzEgwNONzPZrNlSdNlZxSFKNhcIin4hXZ2ip2Hj55Zr55UC9CtquBRX7Hqi/uqZS+pNxs18eeV6Dc3k7wKYSc6sdeuUGNn+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lhui08C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lhui08C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB4FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721917553;
	bh=EBmW2JKxI7RpuFlt4yxVV0PbBcD3HM+TyAh9BqzepK0=;
	h=To:Subject:From:Date:From;
	b=Lhui08C9iKr6S8oFyyaYwKDrP8XL5eeOCpGly3yjxPIykIQ8K4CPabu6JfN2NoLOi
	 iW2Cbv+EFvbezlOnGLSJ7GsxreCHyIj2rZRZ3oKEiS5rDma2uUkAeUw3H5RGBXXY4F
	 ubfNgVsqKrTHOTyyftApjP2hjWrYzJG/+xDYxGI5f6DQMGCx1R7ibBziA8BTNrnpIt
	 GF/OEXHHpxvnGEX4bpW9TCJPnJZuNqgLDtZKXd5DiJCMnvOwsWOcMS3p+iGek/C1pv
	 M687fuMMA+5PwelOJxi+0pdYFlZiorYC8bAj48OhvPzqoJFbiVqJtbtq03rqRldaN5
	 DLzXvGv7F5fVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B930C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191755362.26494.17097777896178191457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93a62421da2a429eacb3c40103a99a696430a436eee18cd26047d44c86197e9
Date: Thu, 25 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721917553
