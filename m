Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BB2A3C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95E7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674537185;
	bh=n6P2Ckkx45ch/5qJyrevGt58MT5Q5Tsm/e8txziKrrk=;
	h=To:Subject:From:Date:From;
	b=Em9VAtHdd/KE9MmcljcGsbAP2qD75jTrgmGHFzDKnRCK11INLmmxuzMDpblsDr5S0
	 hHqvhWZnuaZ6+tQ/+z9SOARaXBsDo0z1a2MsE2o6n65834Vm6Fb0ucicbx9K75O03r
	 SxSjDvh+hgpkrlZihZH5sGoHxehc7f5lhMjbwytfHH6pqLnmHQlgEz+whE2fnTTPzI
	 S0zziWHJ3wnB9Oiec+/3rImT1u02a+sZA9WrtXov5Ej6kXdu7Q5nbytKsN4kOVNAc2
	 IEd2maojHL5wm3tC924YdQh5IzYzwy4ATwe9JwrU+WCaOdTH/F7lOvCsN/SvSPXjzy
	 90zaLpNLE3FMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B312DC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167453718572.25390.10635953771972581362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d82248d83911d66f652244e97d3e32381fdc5915bc7be1802e1690f63864d2
Date: Tue, 24 Jan 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674537185
