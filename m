Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A4B1F3B96
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754870394; cv=none; b=FQNQF7EQRQ4fybnRtK4zIhOSBZzPHRf2vFKUZShwG7s5J34HOiMTgbLciHRP97az1rFMgN0fmeKDdENqfzvooonPhbQZWugbF7pQlvUUeIf+uXGkY9Tgmyo65yurzjisgCpepQxf2SV1rWt3l8mjK9E0+kdINrlwggSRZiGYxDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754870394; c=relaxed/simple;
	bh=pZOHLRmB02kUIOYHy4aLHjaJkX6J5HPlIRSqt7LQJDs=;
	h=To:Subject:From:Message-Id:Date; b=tbX6J3EdOGSsdg/nvkCEenGM68CdsZrcJ78gD3kyk0N62bh837KjdjMYNT1IuMMFDAp6MmwlG5gHugR6v/eFi5vwm1b2q/vekfJe6u7HBN0R8AW2Mx8T/ur+KopMNYRxfyO97ueQOa5XrkNn/1iHq2NKFrr9yoMJjieIPBUiV6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhDf5KpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhDf5KpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F015C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754870393;
	bh=pZOHLRmB02kUIOYHy4aLHjaJkX6J5HPlIRSqt7LQJDs=;
	h=To:Subject:From:Date:From;
	b=IhDf5KpPX0IIzgviUP9fEmdpHzB3U7I3PZF3wtHsupQfI/MIMPSA/uwFjIyGcDxYU
	 al5YKOVZhwXfIPEFob/XF55oxYC262lUKIuz+R5FYrQPl1NkucDfLQU4IIniWjrEm9
	 /sYLfYBI7/DAx1jzKOaHxvz4OoOlav/WLgPJlXtGpb9ThjrBG/ilLg2r9Jvq3gcv9Z
	 u0oi9+HGA2Y46rxYndLzMlK12go7YxE/tYHP1YHee38C5lVj3fwT00AQpp7/2wF4j0
	 mQIC8HtjRdZaUZuHkBvBLsPlhJz1zG7LBI9S4AeFD7JUMDY3bM4y9qrNodVy3bAt+9
	 vAR2IlCsvFLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBB2C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487039357.26940.9032811966009375817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1830f345a14347e434395a65743a85adbbf69dc8de890728c0967a79b236b889
Date: Sun, 10 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754870393
