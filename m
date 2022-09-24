Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98708F6E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0E5C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664014853;
	bh=2APOWH3udsLWhltdJCHBP4VJLI+uLke68R6GwoeUOGA=;
	h=To:Subject:From:Date:From;
	b=ELqIVXaw8/1I1lYFvZdJg3VDatDWquH8Szw6wu1BstEUeav1GahVUD1O49eXrJrwd
	 Y+ZLixpb1rNwcYDnogOVf+PqViL0iV01tzsRA/p5JHI1R9Kp6spY7voB6z4Zgk7UFM
	 Xo0qd7pYJm1PjdaSnx/Q70VVyXdC4lGXcwA7wVgQLr5wnHdEVNFea9ZuBTtiREG0L+
	 v18nI2JlCah+lZplmWyTDdER/6pBojZDhNnYB4IQct0W4zS+dxkD8xShX6I5qy1P0O
	 gm+fQNsU7KOV/oXxURX8kD15AUUg5rPoFllFn5LjE4wSGO3XYnqkWp3sxfiyWLsR/U
	 5C9C+tolPRAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5153BC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401485331.28567.16191912450797001914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ed8917abee1852059a99fa757228538ff33bb81949ea178ad874c0e3c07997
Date: Sat, 24 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664014853
