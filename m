Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630AD10F8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3B5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690180328;
	bh=p1zrMHl+2GGFdwBdgZavbd8EcyBgHPbtxYZFKn80nbw=;
	h=To:Subject:From:Date:From;
	b=Wj179mJsQXm6ZGFTbcUW0ACBYsZA0onz9RUASb3CyDlCiwC38Xu8ygE3fOZC2lpTd
	 7FoZy/06Qj3KpXyf45zt8iYPGpHnTq1lifuhC9YJcBt5OeKgTKnsQL6njo9YqehWSB
	 +Ia9ZhQcMDHax5Ru7LlS7epYaSDhYgLAG19P1BVUqNhd3iC53onSHCussPOqq5Lu8O
	 OCbGP9fS/wIDG80iIhzx50adeAm0QnwQHhjwy/ntWfoJgmXOhvmDgeO0XpjbMHpr+T
	 uUup4G/xFWawWyP63+hDJUrunBlv2COFBMrmCESilvhvwTjdByQFY37c2aXQ33vm+C
	 2DVZV10nD0xEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE42C001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 06:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169018032869.8257.4132488065248367485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b6c40998cd68e40a986a40e56afd4bf6eefa5582beb37fb69ec8dba96ba679
Date: Mon, 24 Jul 2023 06:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690180328
