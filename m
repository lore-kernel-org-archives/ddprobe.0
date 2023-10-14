Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1751C37
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 17:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi/VUUAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BDAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697303228;
	bh=VTJ3yjmC4AdxSV2ObeHfmiMGq3V8A5JS6QBA1PKGGh8=;
	h=To:Subject:From:Date:From;
	b=fi/VUUAwvDUNjqUbPJL2fUs0mqQr17OeBtWICLnOEmRGU9r1JOc3XsWT8tBJGRrZ8
	 kL6+mZbk32RPNDhfuhd/zz2Ywo4KOT5qan6dFxCYqbHO5o0a0yquMd36jlEn6HY/8N
	 AYdQLC57eosz42ZSExGClvlYVzRs3r2FGeQv9nSKINyxpziTTM8O1497OimLQ2KfH6
	 OERZ9ebh5fTcS/EUR1YygXOeAVpA3g23d1FiRoBWxQwLrTMMB0WG1fLDrcmm2vZD1I
	 CdVXt5Klc1EMTZE5AYQngP4rhUsBYHduZZH+how2uWCQh2/j66Z6yYw0bq6q8+3mep
	 4f0hHgcLPVJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3840CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169730322866.16445.15199917022465502536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0affa22d7e16d21748806a2935b16b13beded66999c34182f41a6ee9b4d8a81d
Date: Sat, 14 Oct 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697303228
