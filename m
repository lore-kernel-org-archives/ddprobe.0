Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA521AD56
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m98wLANu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7E2C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701790096;
	bh=ERUFliTMFHoGhuiz8Nd7q3BC8Jir3Yfwm6gAgAXjPS8=;
	h=To:Subject:From:Date:From;
	b=m98wLANu6DIIhUrwIDy2dYlr4Xu666+H7UFHsoJolU5M3rkotm9MjNWgqTumpy7RK
	 d79yLvf8MuldVw6u1WS+m1MV0OLjUxaZVfsvD/wjaZB+0aNt0woD6IvEttSDcD3X2P
	 SrQunz5Cw5nOZpDWE2o9q61DqNro44gu9BCsu2/dTbjOVK0mxgCpVjvrgxbkcJ9etC
	 zoxmGI/VVDqe62J5VgKLeavLWvxyWicRJ8Ta6khbfA9gPwK1uoMeWgHk03ftANX31x
	 H9ZeNuxkrfc4ICaW1xooS7w+tH0UhL20ZmD2Fasfd9POOey5R7Q1tXxwkctKohkiUv
	 g0sZoJEti3rCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDCEC10F04
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170179009638.10028.816205440778233994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ba304de19f8fc1448cdc14cdefd580fd51ccbef49f1e5443c30afb444d8125
Date: Tue, 05 Dec 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701790096
