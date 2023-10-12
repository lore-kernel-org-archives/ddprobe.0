Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77587405CB
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 22:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFouumdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3766C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697149628;
	bh=k7gPl1Q0/K4kQM0XJLJaBmPEsAp6tvSpLey1plAAH0E=;
	h=To:Subject:From:Date:From;
	b=OFouumdNB1KHlQcm1N6l8cBL+l+XftbOi9n2d27ZxxiBQ7Alqijq+Sp+HIlYIgZEg
	 5iW408z+6bL2zEs0vmYjNJGaZxzetakWlN0qQUoedumNNlJOjGHhu5QyY1yHe4IYog
	 j8vSk6wqNEVNkMSAWzWTo0a0lDcJiMHPB/tm8ChATr0GWt799FCOW0VTlsVq0H6HRJ
	 5z9c/52e8bvZhyrxspCaI9+dDJyXkUWydrWQMt4Z6oUFAkb4UfjCzhXyOQ0rqjzyoo
	 A+uzI6p2hcQ73gAkK2RmNJDzlFLFqVuwYY36rqbZjbfduxrWafYaxho6t43P2x8M6N
	 1l+0Bfwodwm3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E06CDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169714962870.7862.7174526335651557180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0818d6817ccb39c1896fb4ce131925082aa4cb9c211398efb5a758ac0698a623
Date: Thu, 12 Oct 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697149628
