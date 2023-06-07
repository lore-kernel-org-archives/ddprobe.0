Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9B615D5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63BCC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686134525;
	bh=BtEiUjB3iyPlnIOiLDprTYqOiZMP5BTtWCFTWR/9czw=;
	h=To:Subject:From:Date:From;
	b=j/9psyNklKn+5SMrtWkrnCWhK6BkfdXO1jVUb7nMm1meGiM83LSRuRBbfl1xJzT9l
	 wRuJGMn58GCm5datlbzytVRNb/GDBW7Mf8C1ZnXFwsj+7N3usn6frHOtBc2POCQf89
	 lb3FkAzzLXm15mUuxuXgWimqjO9otw8bqhNOIm2RCTkUTT9IaLYufIeEfwDwneXqcx
	 dvr18WPNdLc9NvJueuwgRTS3Pk4PDJG8qtf3utBhSFwJb5ve4VKnXlEP0l5cNe0QXb
	 ad84SDhyyrQJauzlHF+5Dh37kvnO3dMak9fLX2sUkmmExYmtsPB0pjf27MVZ7cmj3x
	 qJy6Z+26hSrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA103C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613452575.13250.9741947375761483946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8792d17ad4868ad5b8c15bcedb2369d11acb3b12570f3b776f7d43bb7050616
Date: Wed, 07 Jun 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686134525
