Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90D16ABC
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D90C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671147687;
	bh=bb7vDyr5e1kEWUWlzgtfR4Rcwo+O22m/OaxgRno1KmE=;
	h=To:Subject:From:Date:From;
	b=R9LaMwBxCxp6M5yOrZP/+76B80FYQ+B8D23jAxrHeXLhHVlwttcwOmLJEXFKD755A
	 5Tu49Lr4so3Be1qpPXtSmwL5rkwoJCWZELZy6pKgWi1WRkVEtepwDK3Iviv4JO00PX
	 GprTgTx1q9pm6gUPeKcQU67WDjkQzkXcGwVqU3Zo//2jhfEjARUGVvbBJAF6NN02uO
	 dt43tfz1+/T0GkCrf0K9jM6Bi2gdfVlSJq5LaJUtoggvE5cv75dD9yVd/L9vNspQ9i
	 LDvwQTgD0op2lgDNpxjQC1lZLMLYadFb1SbJoM+oWWad8WPRi7/uWqu01a9lj2cbHm
	 bXnJr9KSUKYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E830C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114768738.25549.1972835255048144746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84000f5ad972cd5384f76d8359747f3da93431b67244ba02cc0efccf91d7f2c
Date: Thu, 15 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671147687
