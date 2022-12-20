Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0501112
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA05C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671512487;
	bh=tJ9HzKIFzqASSL0pEy0ZgG/Vfy1NY1KZpK3uA1/4htU=;
	h=To:Subject:From:Date:From;
	b=aU22u8cuqTHAh7bEX2tgRNuYnsF0zfVHmBw0y3b04RW9uidfSRdIjpCIXgG84PKXo
	 WL8DjB4XYbSqx+kj4fDjuAvSo3jCLmKTTRBXJDIZIOgTo81FE26Rk1YLNaARlcVZUT
	 qrSYpseY41UxeTqiTmShhodB9G0rzyrfSA4UeL0SMmTfaqVT/ps+vu7euSxcanDgCC
	 STjEwGUVWMgOQJ4JsBRHg2xjVbgsjxyTE1R4oVURslKIgNcygU7OeGhvKdi/FqUUxw
	 afDSrLIGetn1ak/yl7BM+ZRIkTwSEYTi2FRroSNDhau44AvE5Gv6Kwh7MyT7QTfYva
	 nNdM3e4Px9Ugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61492C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151248739.28473.5801100111228686099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcf3ee14c95d8833fe770df72e35c05003c4462459c39f089fd3119516d3efc
Date: Tue, 20 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671512487
