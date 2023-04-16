Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CFC10FB
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34B1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681629905;
	bh=NpEBd1ynl6t2vrMeaM7AY1kvGGOJ7gpwIuhqK0rcRTk=;
	h=To:Subject:From:Date:From;
	b=nB44vLCr/SR3mnjkq8Pzgxw0e9l316XZUG8J9WI/5WN08EiGCZMdOSxm1yRthwXm/
	 IfftTdk5WNDWDDLZQ7yuDBkLHkEwxmSHrS/Rm2+HNMF8leUnRafaP1w9dTKdHAFKh4
	 r1jCYTrtZPfXC0QMzLeH+qWGKNGFMkeCFrpDSKjCS3M/w5QTcJV4t7yUTrp5z+ot/F
	 LIwf7/YQ/cYZELWBmQh4nFCZvGENj5lg6Bs15dAekU6SlUpmv50XjrzipHsXDOmqcD
	 BaL2pvC6r6X1luRo9bxoKUkEZgMq98tJcfCTxyFJQ5ehgt0/XPdDN9qh3qvIOKw4mm
	 VrNFhWH3kI9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E4CC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162990580.20607.12474582486666498856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c2d3272a7175f07232fc262d24bcc2eff71469c2a35efdf96379f2ecb227c3
Date: Sun, 16 Apr 2023 07:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681629905
