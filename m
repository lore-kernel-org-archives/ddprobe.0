Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6647F2916
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73F4C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677962825;
	bh=ZykPsEw8MsKr0a/AyGdkqj6BUFt8VG87OKh7d9VgTBc=;
	h=To:Subject:From:Date:From;
	b=GWLxjFxVivj3huKAamdWcNN5+ZjAjzAcVN98oMrHOSCnIg5io1sJICOfElAvve4h4
	 UWviJNkFQqM5B5UbvDfayw8WSBU6krGaZ3+7DmoL4FUMNi7lZDNJCMPJ1towV4/EyC
	 RA9AYvJ3Qg3gzq1LS5YAMQMEx1T3udtcpjOzKtfcsTdSP8KlWI6HdUxiYglz0nMGlf
	 LP/XF3kL65NzNpYd/a0u4T3SB8Y5SMV8aPN3p7wu8ieqLq+RUTH/5+Th5GhsUre2B/
	 nFcAH0z1bU/aUtiRHvuppFF8wQte+EFpo5DkRWLydMCuuIbOcdFcNwIJD9a45c1LvH
	 mGEymap8lffhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F3BC678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167796282579.30732.13357518501422096948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e73b3ed04f3f1f2439376768d1699a8775ef396b7bf565db6bc593aec2ecb2
Date: Sat, 04 Mar 2023 20:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677962825
