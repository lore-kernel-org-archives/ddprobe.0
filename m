Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA2B17CA
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0C1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663999853;
	bh=RNlNM0/4xfwgPqPI3PjcnQrXqaVzfjuoa7yhS0Czc/w=;
	h=To:Subject:From:Date:From;
	b=lthc+aAzEzibh1tqX+6gIvL7O202o1ldlwKiPV4PrIta44drrlPsdhRQRrRJHZzea
	 PnT1K3uGBt3Zy0SjZK6h8yhB+M2bwpLmOUEQqPM4bT6TDtI4iYX10mRBdUSpjU4ZsW
	 FgH1t+Y5QRjzDzkIFrKZUxIxccOY29tITCxj5fAWcCCO6CYyOtkx7RhSKFi4b8r3/r
	 PHFpQ+e72X1NqgEgH36fhpm61BXotuZY9htNeg3ruZMa12iWRMaWhpORP7lNdFRlVg
	 2amFKJGEgp97IG99cZi6++dLe4nO3OQzNQ7tEgJ3oQHbkGM1iT5xgPgsrOVU4rCiTO
	 JvP5RaRNA61rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F38C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399985331.6717.7221288320721595561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf525ee2da7edf8269f6adcc54521d77a172849ad652d8c1d1e2497cd66fbe4
Date: Sat, 24 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663999853
