Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB2F1FD7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 12:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE305C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694262848;
	bh=M/KLaXD206aTKTmIhNLWUbv6gPOFKaFH746rigFp7mQ=;
	h=To:Subject:From:Date:From;
	b=HEFpC4e5hOuvV4WE6pY8xvys57b/r6HCM+2HOKvCz25apVKjqJQpYkjRY6opqEIRb
	 PXZ8DhFGYxZvXi0qa6hQpb+IfsqgXkDpHj70djzivT6STR7e1d6q8hWGaRA1zJBWH/
	 ru4lsQfTJhxtwKs1XCk2gsPr7ENv7ObJ1Tqjd6iDXazRnBbSrGTKEFMk0M6ADlz+X8
	 zpF1p0oqTPJEOUUpI7avk/p+6oDEyWMPW9OaH+mCj588wjrWJW9jvtClzr+SPw19Ax
	 UQC0rtGLQ2apyCtgk8FYjAykF6R+4C/brvBcDfMsEnaLIoo8hAGtplxdhJujys7MFu
	 KNvOnYQibvcYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1BEEB58C
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169426284869.1424.11722714348556256745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1d6b9dd97708829188af1e66e3cf26f54eef66eeaef97fefb8cf962e790172
Date: Sat, 09 Sep 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694262848
