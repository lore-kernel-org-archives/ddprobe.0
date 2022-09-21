Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52883202
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E9AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663759853;
	bh=029fPwvOuCT3P65o5OMp8FVbn/4C0/ykLBc6vqUbO44=;
	h=To:Subject:From:Date:From;
	b=deUA9Ac9moJTRm2eb6FjE2DTi55wBx+F9rGqkbrh1TUWGFn+GKk+Fuvj1WiRddir+
	 0wHR/IJMYPxtDuRUR8CAfvzvM4q+AFPTQW/y2jWDjw3f9ztNCnvDwTGfWscUaJAM0c
	 et0bGX8wIa1ksSijDEIiozIyvXinNh1kAt9g+MclJQS4HCINvQmj5Q8vbodWs1Q+Yy
	 /R68oYZHY/9hj7JzcUu2I2xhtp7xzo2v/DSr3jg8n0/Q/CyqyX52w+k45bRp/Q4rpu
	 7GOMZSoh0vn0UOF5mQvFY/fKisrpNF13OeW4z387FbYO8BN3DCzLHjAEIF3mYZQITJ
	 ia5gOUjFR/7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53942ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375985333.27472.14836146938823233845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471470b119148227059330a3de84b6e7a7578a1540f2047366b59563af37875a
Date: Wed, 21 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663759853
