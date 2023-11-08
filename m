Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DD53714D
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/qYl86I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BD3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699472896;
	bh=02N9CMBZ8lKTiGbIwDrT4dkurucxlDqnlstGeo5esGs=;
	h=To:Subject:From:Date:From;
	b=T/qYl86IYdqCeW/dc8D1maJo8zVvfGALRHGH5P6J+Ea3KPdQk5fSOPrMqKNvSShQd
	 7QT8LqTeqlvgJtoCzhthtkzdeK9xpPkW+/9oGNzVBEYluWrNYIQ4fHyokhu3lvP0OU
	 qkCbLSkNGksozgmGQFFn+qfmw5F7EoCydd13tuE/C9OqyRG3t3iWX3pIhjoSFpoo2i
	 YJ46uGjDcAoVS15oZtHCbtYQOPxsaCMQW7NcJntIxq5Nt7CNwiB+9jnAKMbf3ywRqW
	 x+D9/0tA3nDSlunM4uhJtipH9DK93T5kAHGOTzrbNPXL3uE4z0hRyRuapjoFY1OQNz
	 PWwu4/3jPmGkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7A1C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169947289642.8303.14966221545688422586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ca1a001fa84e9848d09b0b976d082774d5b9323947a48186079bab6e86cca2
Date: Wed, 08 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699472896
