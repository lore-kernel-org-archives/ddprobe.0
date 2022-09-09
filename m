Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C3B2583
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65215C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662729653;
	bh=7vwf3Rpg9KexeKEC7MfGOuxigfRK+Bb+PwKyUuz39s8=;
	h=To:Subject:From:Date:From;
	b=DerIxyt99/OtOyvNSOc/6c7xIK7EP1heraWMMr59SJCCLJ+UKIXcaCyAROD/cZ+Om
	 alkTww9UDMytqnka1UAauFYul/8tfhXHX0rMWI+MK8+6FUljHDfk4BRqvYnMpH7ea2
	 YcXHPsY90vprT92hCmzqxsT7tNrfc9wru7YkbuDbwWn5LpCio/RAXVCVjtUlwivK0L
	 dEdCmEfz5TEGsfvp/ycD7lY5rx++wtX2Mpq6eEclGwBhoo8D+q4bzGvEeOYPVUeKv9
	 D7jszZq0iaQBIKIrun1fV1gRoAC/MPLT+TuRy0jN5cloRQ0kbzOcu7E3/CBkYElIAe
	 EOT51IeX4YmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E841ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272965331.15788.8933224139087179356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e7119a262aff501f181d61ba1db52eaaab189b633b48899b21ebe8d0c7e150
Date: Fri, 09 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662729653
