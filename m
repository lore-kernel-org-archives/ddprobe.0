Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7D029AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB7FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663140653;
	bh=oSdNBdUINjh4lpowUuxkzdno63xmr7ix93LZuq19WYY=;
	h=To:Subject:From:Date:From;
	b=PPtC037AUfjD+GLtMkHZAQ41pwFOOpJqbFXWprUloqhMvPidtV38cfJULO8U5JkLb
	 w90u6CNw80WQZ1YDkMLTkFNrJjXtFg31g7cPfEJOUkYbdNuUIM7riKAT+xLqYNC1m/
	 sMS2nk9ijRIXS7hFbhMFSLtybzFAEttfKhOhoKGrKEhCK3Qa8XQxikDLde8AJxuF2o
	 ssPxZ+UgbngdZ15k4Pu9wytMFH7PCdifY7jXa0AimYkGsNrGFZ1ODk1/McPfmnyGHx
	 U6PQbHpX6g1ThH+ei2hE3zbqIK+xUDTTZLi6UgoATHpdFWHCm5T+1xwldJEiS2fExn
	 3y29sZw9xSjMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547EDECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314065333.24447.7169531548749741960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177c3eb12bed77d82e3957167105c75bb48a1a77471faddb30f1083f5eece138
Date: Wed, 14 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663140653
