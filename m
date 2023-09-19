Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579A2468A
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF8BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695111908;
	bh=FVGCLPOvM7Mr5pOgVDMx5bGHTiX6pShYqvUApMwL6QU=;
	h=To:Subject:From:Date:From;
	b=OJJge2KwqLBPwfmdHMD4Spxfz4OCn1m0+nXRGo8EE6APo5MYZSj7v/HxOTHKybj9f
	 YJd6It+Ztbgir07xRjFzBsDdpeBWo2qDzPyJqr+R63aMt5B/73q3zEQNR+q18VjnFB
	 cfkBb3YGzny700tyedR8dPfEMFv8+XyAf+rP47PSsQe7fSSiZeoTwugM72yu3NuvZ8
	 Oo20hWegp1Eu+2h/pIBkJTpvg7oPw05tOUvV95o5IPx1S6K2a7pbFj0zd/Wfvj31Ce
	 gLmuVF5c/NB26bfIqo2Sx7HCtZNAf4sPqnSmjFJReOyWTTBXg5wF3IMqCis4OmlVIn
	 4MHLdbcHU+r9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FF8CD54A4
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511190866.6229.7078353150757004492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dbf951fb44daed1b0528dc4f8e843d1885f042257755f95df6d6a1ba2b8dfe
Date: Tue, 19 Sep 2023 08:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695111908
