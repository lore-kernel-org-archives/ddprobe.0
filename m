Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8C56105
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 639A7C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662747653;
	bh=DyjSEzX4ThpnQ5VMbCLqiMxLalDeNCefe4P2CDOa2NA=;
	h=To:Subject:From:Date:From;
	b=rur/gqFyjcOLRHLrhJBRoGFdrEHKsKgaQhDzuUA9t+ADgNOpL3eD3MccXbeY81PjA
	 +5kWvfpc5jOkoWC5D4/Bfh7qh5TNQjgJKOAqZc82op6oz3+zHXSNtKwxZn6pJo1+PA
	 g6ezWJN9+ChQ1paFp8YaRJ5N8QjzpiwmMithNY2Hryhgb9n9/Ckzm0XbEgfI6B5DNC
	 ObehZXkoRj+ciGH7eP2JCeze9xjKjokmjhc5JTUxgj/Ag8yjdqKP3QOtqFtargFfXv
	 kAWNY07+3haslRKgvCXz9/boAOYoG6GRrmdp59HVwE4KIyjnwgsMFhpUXETZUocTwc
	 5N+9M012lhcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7B3ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274765331.32167.7168822605458433135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a6c8136bfd27f02e55d493c9539b05f2fda87bd68f2e8eb9e9e87d0164f7ec
Date: Fri, 09 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662747653
