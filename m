Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1370820E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcLHIZMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C726C433C9
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697879896;
	bh=50wFiim5f4RqSntEMYXr0EtBZJ/+e9tglhj8/Pv2wfw=;
	h=To:Subject:From:Date:From;
	b=WcLHIZMYwVA2c/KzeRZaHW6ZiBXgda+6e1/ziqwFrZMnR3WXSfQ7maUMY460cWl79
	 YR6VENeZLfomjoeqp949IjCAl/rOkPCnUZnAjxg6LZB8+m+t4wS90AQDYOK+0amZSt
	 i5bG1OqsCa3FrY3IS+Kx0A3JW55mcQZw8PtN5K42BjpE+YsJg8OacKdrZQ9GCaE6SA
	 3ioDYvs7j2nzsgX0T1maSNwb77Sme4X07dgb2N2IcjiBmQgym+MUpyEg0Rja3vqn7F
	 umVS9l80OWcLXFBPvAfmJ8QXFe0039SBuh6JtnPpwH5is7vpozmsUb6QOdPTMEWi0f
	 Bg2UR60TSz7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CFBC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169787989639.25774.13638610430331308589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441bcfa43a07d9223f93c4e6f9e04987645a9494d8ac0c6ceed89d4ff1380825
Date: Sat, 21 Oct 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697879896
