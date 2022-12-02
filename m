Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA964C64
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BA9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669993254;
	bh=GiM2bkzSSwkqO0W0eFXY7mNKR30izf0YhSJn53u6go8=;
	h=To:Subject:From:Date:From;
	b=YLO8FWO7dU2miDFgRCK6tp6wDGDVGnT/q5/0G0r1HkY75pDth2l6c+FUDqmvwmY5t
	 9vNdpEa2UIKPxLTkuS/MJXSc+KyK2zy7mH2ifpoZ+3kZlW6eA0FXhBawb6BW+4a1j6
	 TDt9/zHbKD/k0icbH4BzuAW2FmWQGz/Ph7RoVv7CALQd8dPbUXhDmVALQnpejUCh7y
	 iKv/FEium8QO9sYgnu5eiggR5sxYdMtau3EVEXmthljEx/uYJ/MdkAgvdYqsvhbNvX
	 0H3D46JsaHThy7HucWnM+ApBAk0x1Hvxa7JzNgn+11ZPpw1redgA9B6dvBs+9+tAqg
	 Dpbn1BkbQEbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A668C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999325435.30767.14036766783425740658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6aa97cd5eccdb07cfec2641e42a57a4ddedf926f395a14157c94b4a89d1796
Date: Fri, 02 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669993254
