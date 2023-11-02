Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F882137B
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPCZGfgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83008C433C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698954496;
	bh=xtOP3O4ic9iJv5pIYZFRi5uFokj45lJyQJ9O47QzKxM=;
	h=To:Subject:From:Date:From;
	b=iPCZGfgiytXofsU53wEghQc4BKnAPAsQF+/oJdCeMwcjtAkSehf5heIO5RXmEc51P
	 Mmik8mLk58QZxtqsItCvS7OwCAYa1VzdWUu8tmlcpfXiUaFUWbk9WgTus8rnpfF63T
	 DFYp5xd55Ytdp1YUR6EVrJ76fie0GRIkFrgHffJTJlK+T90o+1t4PKDMg7JyWwMFpb
	 C/8s5MLAstQ6NEdaMzmFXEjhj70C58KZjDiXx22aQeEZwgv6rxyi7f7WUM7+rHuABe
	 yUPf8LCNMAQROxuWCObmpuquZr+PCw3FHi3NA08t6zvaHjtSFvHNQAQn21wMZff4OX
	 2lI7A9B5W+1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6377CC4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169895449639.31811.12915215142484918192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55f32832a3377e5074f30a70b10b6696b79faca2152c7f59bf967216f6bbb26
Date: Thu, 02 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698954496
