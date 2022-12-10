Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D8EDF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92B96C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670658687;
	bh=j4gymE0iExfew4tMbrEFTWe2ef42xLZa7eM4grzQPQk=;
	h=To:Subject:From:Date:From;
	b=Ryoqsnawmp2sqq8N+oqB0Q9albair2F7z9nhjB7jbEHFK6vDEYcvjyFAHO7rRyoSi
	 vEwz3cF8aeQFwUW0iehMdDTYoK0BPh8gR+tVTEdFmCDrWw7GZila0lkAbzrlDUJBo+
	 OWCewfZhsCd+EUOeSLdXSTkAJpx1GT0KWaUsGgJ/SMqqg0ynH+uBjt/4LhUPknLIwe
	 6tJ7e1mRnxzvQqQsl8qjkn0WeGUGaxVLUUKeZzj2Pv7T1JkCqisz2bwYBjDcf7O5cA
	 lMqu8endKTD3KiKkuqjtzBoEfYg1OmfGISlo2C1OCsd+oTQghloN+/KfMUyolWsaS0
	 9gDCKit5EIgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7753CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065868744.28976.5466542809826324416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4026a997be9b6b26265cfa67e2b6638ddd3e24dd520860ef126022fe32a76c4a
Date: Sat, 10 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670658687
