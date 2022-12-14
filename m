Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDEE610D
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75755C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671013287;
	bh=Uh8EYlMzGVpSOtaL7H/u0/QXum9UbKYt8GtDgTyHNZ4=;
	h=To:Subject:From:Date:From;
	b=FY+aDZqh11T/FBlIOyZdon13Asuh4iefcUtRh9N7hMicfyq9NJm8YqTF8pGdTlpw4
	 8WGQqDknO0D/EU7l8CD4Ic5FgZ+xr2Zz96erFL0FOZ15XkeqbvBBY8GBUTG1n4AYoX
	 11PfJuO4Ptj3vKDeh5Y3wZ9hwoMv7nrnGl1d0zB1O9CAjQBgFUfIbeV9nMFGQgZtlm
	 q52Haox23wFjSPbKKtZdqwnGkwQUlWeqI7wKzqcBGY/ntc2NGA0w2f7S5+XeQ42pCa
	 +d020Gnjnv19p8xn1xp5V/QJZ3qQ1+upMFCEAy3msSXJbtvf6f9KG1yYPdIBR1cqdT
	 2JX2MuhunXzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC66C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101328737.20143.4200484221105416363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55438518e56c1923583da568a989bd2546987531d7a115755e193d648b86c884
Date: Wed, 14 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671013287
