Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B886666E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69609C433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663863653;
	bh=CiUIRQflDmUOK0whil0mzIVnOGigvRg7Y6UYM6Qu53Y=;
	h=To:Subject:From:Date:From;
	b=p6sRTcWmT3GZsCqkyXiEsZ69DQim4P5LIBiSQgg0U6UKXN775cazjvzqzdgQimHNE
	 rjX2hcgS/QgwBKBS85aeOJoZU6o3ygXlkyzdAIUXECyBXsf5Nzi8YyvxCZaftIlYL1
	 gkAJIOz30aZTtphAbobX3CoD0aplOCJUknPVcwz/u1MIg4+LjMaRdd/eHdyVyAnoEk
	 SJ5oiCjEJpMyVQr5HIwqQCeeADinuqAUSrINALWPJOBretEq+blKGdqxyg5N8ihyaz
	 xtgI7PKFPT0ZQEDgayHzHuJmqOfy5n/YmP2Asyi4cMZWAqhnfQwYMQYbEkY3C8D4Na
	 xxHXif73I9d0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50980C6FA91
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386365332.10173.17189863957637411883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f0427328469c135956f2dd38ae76a8bb8161f96ec962adcb10de2c2c6343cb
Date: Thu, 22 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663863653
