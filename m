Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AFE1C04
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B88AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669984254;
	bh=W5k47vIF7PWZL4LNKcnpOpTDHlyII5SNHbUtSKRmiYM=;
	h=To:Subject:From:Date:From;
	b=DHZWUitg0/3XJ/NPSfTJNAfpcAg4Wu1zP//fp8Hk38Tcu327D4K5gYKSOBYvuUTRJ
	 0UWdxxNN64m7HAzPiCQbSR7Ir+/F0anKIjrXaia/+hFwPZpQQaDkE4NJ3pPUWtqWnf
	 HBTFRzlOxFvp9phvU2rTlOjhmJDtFkUYa6HJjQ50Q+Fv3wTx6z8RZM6T0hrXOS5lwK
	 PB18RUp4YStnlldz5A4N6+8OWKYEaPWCL5adgsF4+f+iut+5XBUddpLOjQ4Z5bqx6j
	 fT4mzIVjh54m+pSWYx33GENGN2R0SVzqIUnAj+nzttyopPp1QyVrdvjYjQrK8bc3Tx
	 2UHnoti26w7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52259C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998425432.22514.199757387486996370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e891a97ad048e600f3e6c27558222eeca9102c70537ea43f36816ff1cf38b07
Date: Fri, 02 Dec 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669984254
