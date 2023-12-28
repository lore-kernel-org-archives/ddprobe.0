Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E39385
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEadvuLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98633C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703722696;
	bh=KczvG+xZIdi32JCfpr7kjrhWjf/b+VvDJ9gv4RJAMjU=;
	h=To:Subject:From:Date:From;
	b=UEadvuLk20iPTz2VXyNr8D09q4VoJTr0+leYzpf/L/isVAsgl8/roqgCXOB0HEh7S
	 5qWYTqtvRErEBL20g4isza/tUD1I6VpVKQBrWPSl1mpC5PLrX8I5D5pwT3YYhPJJ7m
	 eUJCVlVegxbQ7f4/9kXFxu3CC2BHJl3ZvlDiLnWI4LMugtYP2hy7e7do/K841j/MjK
	 GnvUWJKmFm5hi2HUYjsOWAGp7azxbOtuN1hUvTlsl8xFZwhSA1dhxLlp2Cw23AgGFL
	 2HcK1fz2zjOuI2jiRsIyZXIitvXzsL8UzAUfUfr3uf6rzYf3maZ/S7J/1IWJUi8QoX
	 oEWuY+trFSbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A5BC46CD2
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170372269645.1043.14055054159905553536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccf05a746262d004a84079f10c3b987c73db14c80b37a6b9f2aab459051c2d2
Date: Thu, 28 Dec 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703722696
