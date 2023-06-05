Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8731AF9E8
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 11:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04860C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 11:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685965146;
	bh=HNRiHTfN+EjdoLzm6mmuUzFxxWb7cATya6RcA0x8sUo=;
	h=To:Subject:From:Date:From;
	b=om52N52WWe/YEwDsK4oxkFz262pFB0H4x7nRm78mCyEPae4GNdM6y+tyd5pZereDG
	 sDFyBoTehoXiFcorVGoHY/LACZDZR1BWDsF0lIxBW0nqPimRMfVFoxGbd/uPwmgQJ2
	 Tor4ll9XzVZ9j0AZUeXaLqlOt2tFou7n4ZtipZ9u+DZjPVKqtZwwftv9n7Cc1vIvnk
	 5ASGdVImAVlQsJoK/oSOo0BwKnN/NPNAREvOw5qcoUzrkFWhIc/IHMAcwfN6hKlEtr
	 z+JNo1yxbwUQFK8y82C0J/8avvfX3M6SxRBqHPmHiAAtYRPAoCtoIrtfb3RSCWcQx9
	 pTdGOgq+Tl17g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D993FC7EE23
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 11:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168596514587.19333.17714510278879770671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a67655e4ffef7ee1d1452f403a8947a41ea678af5a24b3c5e6d1916ea5a167
Date: Mon, 05 Jun 2023 11:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685965145
