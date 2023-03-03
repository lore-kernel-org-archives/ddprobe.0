Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9288F42
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 19:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01E9C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 19:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677870425;
	bh=2LzwqQjQXJBNUgyMhStu94GLGWZVnff0fpV77ixZ6IQ=;
	h=To:Subject:From:Date:From;
	b=Mpyb9IddHiuoXJv0B++qN0uWrHyEjbIdy7UgmcpVXfxXDLoEbbBYcZ6kzyZQjhJXK
	 zYiqkCeGtuaIqFkgNTbqKmpSgH4Gen/nReC5k3UP5pT+W4BcGQUNwraOSxQFLhGaqD
	 FynGZOQBkNv3Uki+e3Ssas9gXllj6lwe38QSW/Yoymm/cHa93vZ2mes0Ae1QRxrmd4
	 akt/KSFubQtvW4d03rlb6OA1SfWMgwxZ+r6hHSYtWvX0tLnhPX1a5xhkSaxKd8cXkJ
	 rKX2opFgyszn0Ad0044dWTcG78ci65IR9kozpjylLrDTFJc7V/3BOm/FlIQ3UpjhLg
	 XyePcHYsMo/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13A8C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 19:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167787042577.8831.2379974834833781507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978972a7b2170d1148e04d55fd89458b5085337fe40532eea0a6092ce5309d7
Date: Fri, 03 Mar 2023 19:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677870425
