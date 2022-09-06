Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85F886FF
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C17AC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662506453;
	bh=AcjChJB3QrtmqT3M3n1tpknLmcCtSMJs4GJe9mnz/QQ=;
	h=To:Subject:From:Date:From;
	b=EjzImBTRxrVjHNdiNPUaBS7SGpEH5oNwBqUv+cLc+1V7ExCsFR3AJbmEvulSxGbTD
	 HkZMNZxgyDf78uKKt64KWZORj9td8YZ8G1zLqPtpqgWX+5PRZSxLfbNbJrd/+Ma5rA
	 HlNRnHATBt2b+hs7btFDz6IDBlYqA1EXtmny1EMqURiZXzqWdo3i8mOWVxRNHAdMh6
	 p52bVKQyGv9Tz7I3xFxZlBDw0rjAaYSKi5SioDQZdSZKZOD2o6mRmUIv+jftxLqArB
	 qBN2nL+kgvgLbjY309fVdFSpplOp9BxkaF2qpC/UK4doosvTzTsf7lXDCG19jyPLWI
	 wsK6JfYLmCO5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFE6C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250645343.17431.18435871627584226652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2057200d297d5d9ec58e6ed03ec9ee1afff76f87dea1646cc40c811b86f31ed3
Date: Tue, 06 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662506453
