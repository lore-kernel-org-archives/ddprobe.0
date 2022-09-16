Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66E7360
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B644C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663324253;
	bh=XEU/PeJUYd2vVj3Ly4WT4FUljqjimPgBrAy0NXLQ3lA=;
	h=To:Subject:From:Date:From;
	b=KW9MX4RVONmnfSfG+AEs0jICAw9bZ3fplhnl0ckctEgegCSUduqoglkAlFVh58g4E
	 PkZXNCKeRblXK1Etz95vMhiDvNY0GGRo3iHiIIAPNTPW86+9kK/SHFmxdYC5xUdNEW
	 LBwf5uGk47DLJAhz5yaYc07zQ6fmU1N1WKzamxieTarCHbVLT1uBoOklbKw2kRNGHa
	 ARlpvXN3x/W3HKdX4zacZN6Y+yXVO/piiKleMEnAbjaCvibw4Y9rO7PkU9nbj7Z0N+
	 cUIdt9bEHB5ItqgGqe9vwAKStpniJ/y+ZNKoMN4Hbkj04mpMrPghdBcAdTT8y7lm7K
	 lSmcbMhAVeTtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50033C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332425332.25142.13794855459919709430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f38ad3aecf7aa8e7a3208366e67d5b1b0879ef8964202fd8d0196be8eb011e6
Date: Fri, 16 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663324253
