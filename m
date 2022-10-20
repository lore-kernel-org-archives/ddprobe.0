Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD66D7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718F5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666229454;
	bh=JUQa+Q7vWCWM3EiO6BIs8ybuU68gByavW59eN39ovTE=;
	h=To:Subject:From:Date:From;
	b=GyMSiVz0B16jBdOvKyymUdWHjEz/2eDzWUslgerljrwbWZnCsW3ngs5GW7JoIYqNk
	 BuoAW7y7OoSlYxhcEju3XEwsSkkDHoTzm56EBplF7WJb2q82k0sndo9VXjNoGRiND8
	 QJKwSjCplYg6BNWUnTx3XA1CCOuRfKiHQlIpNIGDP9X9yGwfzK2HKusBjsvHf7JSe9
	 O9NOmu9KKTc9u9MrROD2WWdbmYK/QoJX+CvpU4moJUIwUEK3nGKbx069UAUkenGmvi
	 dd7i75ZWPPsqptbIHRkwHgtEkpGIrkFOrL63XrZdrD2MVXoVA6VIcjb0mIaZsRiGb5
	 bfqrasbdCct1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57ECCC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622945335.7856.14926995973165909945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3fee084e72fc92e901cd481c0ce9a8e1d9b7cbd5bc975d111f74bb963f834b
Date: Thu, 20 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666229453
