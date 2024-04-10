Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1344524C
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712713697; cv=none; b=JbcMYvqECCSxWFe4bc3Ftej8s6gFgkgsfxQTH2lsyQJr6eSFGcPQxmSl/6p7NPuh8b3XDWdUw06QEM/sDOnS0Er4RCk33Keq8ECKh06YciXgoMi0ovuwZAsDjzGKSjmm7Pi2wrRmLo2TWqzMClKMVJIk0nKtRx7lXiGyWbbX93w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712713697; c=relaxed/simple;
	bh=EkuFWL4GbzRNxOuARy3PkS1TlNHGzGGc3VrJ2h1FmYY=;
	h=To:Subject:From:Message-Id:Date; b=ZcZQJii56ouixwXYbcWGMKbSLyytXUsbVHTyIT6tS24dJktN+W0ZAe2zKLV2QK9jUNDN8ACkdxk8ybIdiuoNaYT7aRnQT6ef9b67Px3sasg9Xr1cBY8KiPgs3zIUYmaFyVIOxHHkuuPbFKP5+dmHLzPOeQO0d5+MgbIfAb4VT4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhFjgsnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhFjgsnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0DEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712713696;
	bh=EkuFWL4GbzRNxOuARy3PkS1TlNHGzGGc3VrJ2h1FmYY=;
	h=To:Subject:From:Date:From;
	b=DhFjgsnbhreonWO3tKLHeKlxUr7AtyuEJQ41Zy7pKvsLVysnHl0tVuv3Ftf/mKIU8
	 u2dNMBDX0pSHMo/3agfjkeV6hB2PM2WKUXd1n1UkGj5SjbXvwSwonNPuo9hv99p3qP
	 qDes8WguZSJaM/vvsixyF00eVEZ7IrZ0WIRzTc39uBjKbhRJm3jaRMl6u4Hp/JJA8r
	 8rodMqSU8eyw6rYsICmr+f2gMQpmV277Zy71snPfqkwHDZh2ElKMLoXLQ9xe1RJWBy
	 wZo97xL5IO49zaZaVl+US8HgW5ZVyHpyFbGdo2+l0mJRfvbjFdDYL1mxandiVZ2l3b
	 K4CAAuyDqcYfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64898CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271369640.28964.3249413564606980536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec07d5fa44040292d58ac838645b8b2b37f581190831e51ffa209f8a6b44cd0b
Date: Wed, 10 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712713696
