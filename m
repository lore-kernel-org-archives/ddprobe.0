Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1AE4699
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DA5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661791252;
	bh=sh9HIY/ghtAw3AXd6CxcrSufiYw2jaNOY0zkEuyqb+E=;
	h=To:Subject:From:Date:From;
	b=LET0tV5k1OQtJulFq7g3eOWSDqElxcX7oCujzyY38EOpNigEN+atR5DfoQJU+Kd+8
	 rL3wgz68GXpFy68N1qdKUgoHLABP+qvJ6+iaiIhkUuFkEPaTqlFHJFYvpC13d2E9I9
	 d1URkEnniMQNhYFUuSUTVJvi3ZSG8OMqgBVdYH/orIKP7JDBHmaQOoWeXdXhO2eNHS
	 2JSJYPpgQCt+xkRP/coQz84/S0NdJgVG4EVAnaHiai1+fpqKTAf67o1V+q744+h3DV
	 GgnOqtdp3RtsC7NTrsJQlWOBn8GqOG5+uRZ/9uV1eW2TXX4Rhw5TOPVuC2ePSW5A3k
	 dd59nAp96tQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68738ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179125242.11343.11509634989854909506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52838aa94912103861907e19cdefe2c6d6d037055e5123328ac6bbbff5c34d4d
Date: Mon, 29 Aug 2022 16:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661791252
