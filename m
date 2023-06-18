Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D1BEA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 03:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20E8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 03:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687057808;
	bh=WlPor/5ZdT+nqJElIprwNWUdnvIe4QKtONYrFgWecFc=;
	h=To:Subject:From:Date:From;
	b=gVZS3FEufpj3QeyN09a5kLzGuKpjc1vSB18P+/Vz58w8lw/t3P42KSiJvpEZ+TQXK
	 xhdlt5O/kcSN/5HX57inuvMWq4m6MOeWQ162g/ekpp5Qg4hqvqbT04Rmp4Y7vZArzG
	 LbGN/S1GpRlzRoCBxH6WMMgrXWrHwGnyMyn7wvK9GcUk6MkQqzkWjiqDjyXu4umrrV
	 0XBW8YZHqVRgHRHj7AI4rsrdisheW886oLvyWOsGO3UeSgRyBfrweCFT5iOXW3WTRg
	 GS9nz9+wzK+Svg9mHfrhXf780qUGO5lZevDN4XKdZInpe5j+vXKrTgdaEW2+/wFoJG
	 gnyl6YzAa22eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FBEB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 03:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168705780867.11113.3967637369375488023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7950ef249a64cde12b570b58e335e0e8013a39739dcb48f27f6a57a3f665be50
Date: Sun, 18 Jun 2023 03:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687057808
