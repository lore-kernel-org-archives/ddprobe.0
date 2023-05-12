Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332C563C6
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BA3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683876305;
	bh=hVvMtuaLNWw8oRx0iRZ+cZjOVoQKgkXA7R7g3iuJoy4=;
	h=To:Subject:From:Date:From;
	b=tyyBpPEbAwvLhfk7Gkh4R035uuDaiIB+ToYj9R+Z503kYjgcldssZByeHO1XaH21X
	 Sz5r7ZkHQS8KHLVpSmLEAZGe1TJRCGWGrIYu901u2nOh1W8Mwhben8W/Y2Vd45pJhr
	 nEJnfMrNZaNn058t8dCUF10Wc53pTmYCv7E7EGoeqC8+lpJRfZJfrJwcRXBy2M02bh
	 couE3S/250Vg/kBQKuINMKjOOVM9IUqf7uxnGVfFXyGD6VFxzkJcnK7TVkTq2m9M1u
	 kcQwFYhcAcvVdigqrYqaGMEQJ1+J2c8DfHCX54o0z0VofgAREAoUAn9Q3enk1NUtyT
	 o5M1TJ6pilxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9387C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168387630581.5041.827786662572617083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86e14473e6dca5f31475b58b5cda62f40d075998270deaa400196a62273de95
Date: Fri, 12 May 2023 07:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683876305
