Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465117E3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4FBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674207725;
	bh=+QQbc94JbwxdteddC689/dO96c/CzBU0TMIJzj4ZEA0=;
	h=To:Subject:From:Date:From;
	b=Oz2KTssvo3F1eQqbXrSJvkutkut5D3CDQwPG0pibxsSi7Q5cnklgc5LCBsSBxfeN7
	 Wh80ULtrPGUZZ4Q1y4t61rIGS2iuAw6lm1T8jQPNOujjTLvyJG/TgmvzXrvOT3cesd
	 F1rUOcEdz0G37w8L+acW0YvgT7yWWlDyK9awupv4GSAbMScrVPVYyOdhudtMyHBC4a
	 +WoRvmb4cq3oi6+oKFrYxQWdkqvgz7ERDWPjPY5qYJTHIqSeBnsKQ9S9spY/zgE1ZG
	 f45PM5pZ0TIyN5YWr3A8AZM1Y/qDAYn7sIk7Z8/l8tksRaDzr3OdQ5NVNMswrp9/13
	 qhLkA2xIYMvEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4C2C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420772575.25922.13312511369553945532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d423ca8210bbad5442d18b716008e7f4efb1a60deec35b005b933851322e17c
Date: Fri, 20 Jan 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674207725
