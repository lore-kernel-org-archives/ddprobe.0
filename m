Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84A2185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820F4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668082254;
	bh=H7ibU8bxzcZyPb5n62Fwasuqahh/JPN5j2dKYumOHPc=;
	h=To:Subject:From:Date:From;
	b=T8mamYIAArV+3/h1R+2Kz69MNRYheJuwx+fUd4BB1PS4REo05hufyQowj3opPw7uH
	 LznRMYKAfl3wr9xOsG6N0P3JJ2fnCZV2ihOZVslokz0WFNc6lIDbcF75/WmgbYuFiJ
	 M+0AlIhv0i3SpZ1n3y4ypEBNKmyI2ydrnEXS5eSinMMYYOEJfhGGK4WpzApm0yucDl
	 g3scs4v4AfDAfVcVAnzdKXwkj65esWD6A6CZ2tVGoHUjGML+XSlgHZHJYjsSm/Si4f
	 SW3GzNoiYZJHZKAucI6a8hL2dpOSS+oK1x73nSVr6YbjuQDsQEMuDcPsNF82EyCWIl
	 MR+hwnqyZUOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667EEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808225440.4783.17817935706127026012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86285135f9d4e5a2b7d9e8e0cc3e0464844453782c814a87d0ccbf06d6f0e4f
Date: Thu, 10 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668082254
