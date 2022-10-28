Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA797D529
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD75C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666983654;
	bh=Z99GwSjBAapqMKdb5A3F7OLYPFU+og2QGr/POZKZC9k=;
	h=To:Subject:From:Date:From;
	b=q2Bf17uPGBhtwq3QB6vcmkE1cjb4oKXDBmBUD+xX+9oOPfKpoVV+lFJsV3tALjTOZ
	 682WpA1pnTvvRBi6JmAmzFlpjIR6Gc7d3nKClcnuTqfPrJNBWO3qH3Wr67nB5DWhw/
	 ib4Cdas1F4QLipjroPWZ6H60rmXee4aR/PO93j0ScRWjbsJ4bmqapna3f/HZ924TZ4
	 qWmjCypvi9iS1a37oF/TwtI44gLXs08MN4F03EqJk1OXcP1a8mZmIHVndzWQadxKut
	 C95/TJaNdaEt4sFZBMH54M1h9KPwv3Z4WnE7Fsuynk1dI2m2rJKHhATEoZre/jtBf6
	 DBPVY2Hj+4qFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D4DECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698365435.10665.14900578607185500644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b26992e7c26588efa030b253a6b276bdb9735031ae1af9662b7752b59250904
Date: Fri, 28 Oct 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666983654
