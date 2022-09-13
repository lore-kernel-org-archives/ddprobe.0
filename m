Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D942766E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 823C1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663098653;
	bh=VYijeegnk7+BLU5UJFU6MX+eiKQOCW3L3MMmfL6tQC4=;
	h=To:Subject:From:Date:From;
	b=Z5ajj6fHqkSaCW4rGoT787UmSPmWJx1M940IrupGgUwyssAitpqUlOR37X5azdKL9
	 jr+uInTqcG4Xv1pW0h5SDxFx60gdrKSofEr0oaOOoKTU7jy/SQsJ3riCRX9+lX5oSZ
	 fh8jor+ANMK6fMTKSFyr+il8KzPjUzidl3YKqhdo+x9XrnUOOyOwoIULDVTQEHZ21H
	 Ub29aDdfrVJXK2qnSy5anf5St4sePxlplhQN6glHbtAmYFc+sF0j570AEWwaHiHd++
	 BiaaWToRlFTCKViOn4oKAHAeNDmy1N84ZVCfXQYByC+uQ87wQbRE3rwaMpfSUWcHiQ
	 MEy8jb4px8pWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE85ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309865333.30799.794046039571516718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecec6cf490d6851b992457c995a748f6be4b1b9ac8eb1c52751b4fcff61e9c88
Date: Tue, 13 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663098653
