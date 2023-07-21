Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF1DF9C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D952DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689976928;
	bh=BZ33zeEf1LjYTroJcyNog0GmPayZfNsUZLyjy58/MIw=;
	h=To:Subject:From:Date:From;
	b=P8Egq8z3DBF5qWvev4BFdY44jyXBghFR6BNfBRl8l74ibrU40YGckaHPBAaRqeKyE
	 6SutGFQp32nKDw5l+8udWZJIThZKs3/mSSAOx9RPDYkGLRyYMxc8XkOAUfVh/IXXiS
	 h2W8FkDBAuRpO0LUFxqNjQEizgF2kWU80oColVzlTEW147/IHzg+J5q09OLgrBZzlP
	 ppDsuLtGNyJRQIBqnE97Gqz9InwdtxJJuaj57THi1gVNedhjBqgAdM5+8805M7BGUR
	 C1RVZrCYeNzz0ZifG/5hpUCOIfGP7FheLmeMwhOxQ23+7V9z+muub1kxfOWwUgGSqe
	 soF4Kjje9os1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD676EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168997692873.10883.8078898473888907629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ad08c627ea620c0f572eb714c19135940967ca261ee95ced23f0d11d73b6af
Date: Fri, 21 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689976928
