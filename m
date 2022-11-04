Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F3AD50
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CAEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667598654;
	bh=56suR98mzRJlLLsC3CP3PkuNZwmT0yYJ4Z3S5IYLOiA=;
	h=To:Subject:From:Date:From;
	b=uLWwcma3VeqnUNhGzXYF8dLZxUr72LzFERzOzv9+rUkv8L1of3Jul4OndKzCdaC+m
	 6gK07inUkyNtfHcngN2sO95+S6oyermuZccwrOagXd9adO8D1NygbG0BIKFMufPzBM
	 s9RtMua8HOqNfrhRTcSK/T9wKqWB8rDFTBtuHBMU6TD8/92nqZiCyf/d6KJGtPP8C7
	 qfrXKyAb+eRnf1xAC8A7wvX6OKS+mxUsmlKaefhHgo+LrPyZFL0JP/FQfw/7Fubt27
	 QBY0T0W622vt26xQ7igzkoupSFMKSCkJEacb/mnICPrXcA5yUXP4oD+lHAi85PJc/Q
	 32CnpsM40cNzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5576CC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166759865434.20517.10970285650233288296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93c4bd326c22ac7a41800fac8bc6b8d739f35e683f208df83aca1b69dbc9b07
Date: Fri, 04 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667598654
