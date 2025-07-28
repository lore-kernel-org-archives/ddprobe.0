Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306B329B0
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753664994; cv=none; b=Ssn8A0qI7ynO9M1i38mJvLDpd6pRa7Oj6URDrNNmTOwrryIe1yF8HUxFsbNFDbkepvEKpLyMic+Ch+7cjcOeYLD4SqGGQaozEFg4EKLT1CYriJnAYJYOeegp0P/av9SPwxHKsxEnKnil5BRLyf+bxhPWEIRK5x2pUqE+U4lsGqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753664994; c=relaxed/simple;
	bh=JLS/dJu7sxMSi53iVqZvWsQKah9GYeEcTtHmj75s06k=;
	h=To:Subject:From:Message-Id:Date; b=Zj8vZF4TGGFQHykKvWHYNeTHSK3LkAbdPm6cetnwyatAeYiGHAh8yYSnlr1NlGtzII1r8rHISc0+Q0Tx/nCc25y8Nz86RFaftoAqgw4lJ69vU7DOBio05VmpEkQjwZx+ANHQ+17DZkjO5S2eLCy2sfaenD/ch0uaEZtdtdWox1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a60ZvzlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a60ZvzlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753664993;
	bh=JLS/dJu7sxMSi53iVqZvWsQKah9GYeEcTtHmj75s06k=;
	h=To:Subject:From:Date:From;
	b=a60ZvzlKHScCPONnnOnSY7kQKC/goFmL9Oudn/eqsBkV5K0kksspm7jGT1cUicitI
	 FZ5wQGT6sQ+b0RPiIfWlxmCqgdfOL+jk5+Kj0S8JEgBgchSHEK4s2C8AaZ+wpQKkk5
	 8JV3SRZL5dZ7nR4lsp7PbPHLb17Olv+w0fvClFOgR8H/XXy3MZgRINIAVUY8z9sAgY
	 ajraEQwI5J9qtbT++lQ+vY920kKA+k+c9dSL7BmZfIHJ3CPFfSJb65WmyiOVZK325J
	 KIcvsRFxAwvT4aOPss4/XhogftdSPfcxTs+BA3w9f2AdOH3Y4stV4RX8yLoDy+Sc+e
	 1YaTc6MQbi3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93FC87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366499358.15900.15212137914520362747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f408f3197e14aa22195557c66269d28fb95f7f4d041f87562f1fd816def032
Date: Mon, 28 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753664993
