Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B565710EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A432C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667544654;
	bh=TGmvP9cRdkfV0wImyoe6ITRM1UFf5cR8OeoVF1zxwKk=;
	h=To:Subject:From:Date:From;
	b=ikOZR0Ue0Vo3ubbj+Ebq7XYFihMPIg7vx+9xaKsz1RFtc6TlbecA7/GyWfvaFQL/y
	 oXPSoqKomKbGi1piSJU9PxP0ozv858i2ZoFxIOovxSfMKapikVKL8KaZqbhcwWd0kW
	 nYpeLUlNJ5IIt1ZTz++TQHcXNoI5YyEhl5cUvTV5K2WI2CDgyjyRy3+BlOKFSzUHHG
	 KEF+rlyagag5/QNlIqsCdUp5EPwrNYLb6/mU7V5kClY1gjwWI+26lT8S5QHvoDHJUa
	 T+r3wMFarXhlxbDNYgwPbwg80jWA4jJ92ZJHGBvSxSpxZP3PrDpMJjEyaWd3aPU89r
	 Ch4SR+rBHJ6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD04C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166754465431.31161.14468602897876932776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ce581e0fe89555a7750e34b54ccd6aba80eb2ff418e7def878819fa85fa310
Date: Fri, 04 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667544654
