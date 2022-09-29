Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65A610F7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B886C433B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664439053;
	bh=uV3U+gOHpQGMYAD636YJs5NG8OUVvmoxCGS7XDkP8NQ=;
	h=To:Subject:From:Date:From;
	b=ozMkVv8p8qbFDUQ8keGrAMCumeDo4wAfqDpKEXlvkTGih9N3smWlV6FeTsK5QJtpq
	 jtn+uNLyyQyr3GjKsvzQwinYD9ud431haIlTH58vt4zMnzeMPNN1JtuRGsVn1N0KVx
	 JyIMS0gLJS6beIJ/43Bv5mWfqhKef8BhDmXY1k/QxVcaUzdIOngrg5C1YPoMQ6wau9
	 EL7Hp3HUKdys13Rfjrutr3QiZ3F5CvXTTmAqY/sS1TspId2ZdU8w2vNfioH3RPqqqj
	 2PW8nRPyOQdn7DsFIsV07VwD4PHGZKyD9d0B79UzHcPiMQlbRK7N4zMVN+tatzwkbe
	 jGVZcY8LNHI+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54003C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166443905333.32105.15644113447545548795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241fe9eb627e2eb50135ec37d84dbb800a1aaefd25fd81211329a0ddad752d18
Date: Thu, 29 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664439053
