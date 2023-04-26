Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F10E538A
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2277CC4339B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682530626;
	bh=6GMHHcnFBeS4ScaOElIGYrOVH+dDxG9rBPpbQTet2Bk=;
	h=To:Subject:From:Date:From;
	b=dhnrvvg5FCeejDuzCmcihH7g6V0D9h7tiB6lvbbSbpbYa+cJzKiTJ9mak45EhQwKa
	 jYmbRwpIE6S4g9+M0eqGIJsXefSV5NkWG1X+/31gogIZ2K2ccyefsZGOEo+4nuh9t2
	 nxqp+sWum/pJB3qZvdcqhlPAkstRl1vWLkoGpy3fxxkLLy/1uyS8ZRy3CPMglipj0Y
	 LXNHz2O5goxNvZ694bv4IkL16/KcN81L9D/LH3QtiLijNnrXi47MdQQySMnXW6nAqi
	 mBMuG7h8bWtI90Pvn4voyjHQBAy7k72vuWsexNi0U5tpC4wKVE1rT6X2VxD6sM3If3
	 +wK4PLXP2le3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F07DFC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253062595.7402.15504114914515371052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54fa4f7d8557dcaec151d7842387247802d35d119a2be56a664442c692c1328
Date: Wed, 26 Apr 2023 17:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682530625
