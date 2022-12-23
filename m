Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE72D1FD3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3F0C43396
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671784887;
	bh=BLUjSZx7xLZQzlz2N9P97J+AlcE5E/0Ooonm3gMZBeo=;
	h=To:Subject:From:Date:From;
	b=JQj8v83tAOfYYob0znmDOPnz6OC8TurliLDX+oLh8xBMolNjsTnQVPYL76mb9ANBh
	 BaWPLa/oTVhBgbtMAk6v+6C8CPFYiFlLtFxuzK9xdnx3ccPafJeVvnc+7CU5ELGy8J
	 gi9R8ebhF+Ns+suFm1V3d6UETp0gXDm4uq+Y92p1q7P3+tkTbHtAM6Z4o5oEVuFnRG
	 1AkhyfP3ZnV+D7vNgg7kujQqbR8IHZWQFKu5K6QfeEgll2SZfHWuIIpzmteDUhYw25
	 vFv9ayCZT65CWY2v8s/+ruBtAWaFM7f2YKBhuSMqMuALcU+oZ/eqofE1cbvq9VtCCJ
	 RpZZfTUHWB7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E97C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178488739.15560.9860831978221432384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2643c971952ed49676c4d6003842bfa4b146fc8d0c484d7e25361c83069e868c
Date: Fri, 23 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671784887
