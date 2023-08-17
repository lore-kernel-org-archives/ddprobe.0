Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA014289
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1636C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692290588;
	bh=3iXkDu1CsdShhxfbsbX558rg4ykLIrth2B399EWAB2U=;
	h=To:Subject:From:Date:From;
	b=AI/4tb2SArwj0vDKK24NmR0yOuL4kQd5LQSAoV3V5TaNbdfiFX25y94czVYCCmy9t
	 QvzAg6tDg8crktkINNulYtf8ygl/D18exyKjiHX4QARdQ+zR58/D7oMdjT4tJdbDCl
	 BNsdwr4zu54tVQmHASOS360N9jgFSwemnWgJKOYEi6bsS+//1yS7ACcEXHVRvgVwsg
	 qdNIPJAVnnI6FvqPltox1pkoLh+TWbx38finbwkZJGLsAnnmR4tR8lO6qbkc/7aMVL
	 h8sDs62vMCoAfajB7u+sAkVCazkycFqz0TqzteNY6lfkTN8WZMrXJaaxifEDjzJDbw
	 ldWgdtS/+UVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B84C3DA54
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229058868.13405.11894441923460769715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeee03b23c9bfa396556ede683723d33c010b7fb6e1e2489cb3510f0784fe2de
Date: Thu, 17 Aug 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692290588
