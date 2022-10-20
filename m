Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8FC7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB4EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666297853;
	bh=4T/fnQj9MkXUbmGbDkRt/IpCDcbG4jZEm1nvZSodqw8=;
	h=To:Subject:From:Date:From;
	b=hSiL+9LlZIwiBnGIccMwW7n1w5a8vMVBL1EIdemDDt6Bhg/enuB94LnFZz1BXI7Cu
	 mbUU6oRGYrNlviPefWBohWQMchsqN81OSlNEf/v6PhUlXtm6PiXWAuQIl4AB4dy/5N
	 8yyWpExXPf4SD+moDhZtOhUPMSdp39sw4kcrJrFHPv/T/4grBncrPnh2YlBwl146kn
	 4CqVFyjJrZxurdsMV10BuoeSTOVuJVZYkiWyX+72tqSng14lLpfWm9jgCHYr69yIlH
	 Kueyo4wR+l3oVvFUdbksr+4Vf9oOloG0yr1B5x0D60ROwH9tYE5HHYpRcHhn+jsr/F
	 ZIIYo5ZTiu1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5734AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629785334.302.3643610276949310870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476af0435f560c96808db50f452beb351d7e8e6d65816d020333b33b2f702bb3
Date: Thu, 20 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666297853
