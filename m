Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BBA7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DA5C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670246454;
	bh=KDjcEayJU2aJgB8tnMLRDN5/I6Z2Zzz5B9SSDHqkEgo=;
	h=To:Subject:From:Date:From;
	b=ACvHwolTerzv7IKPEuYN9dPE4P6Wu9l7B6jlAGZUIzi26yZFKCAJo0LLKY+8R40II
	 ciuqZpifEsytKnm/du+dyK+sl7NgnHiWizldg4tjeIDJakpStJW5nBsd/isxrO4K6r
	 QQZY2j66Gwm/OVPaZE4gw9y24h+oDXZosPkmQAFJcJ3IxHo6N6Hy8gE9VjGYWWtOQo
	 Rmxyvm6PH4zyOSF/L/a9wpirC8e17ojGL9BmkeBrVOA/LF0PBo53L7PcLPgorl7U8I
	 XMgLFkuLUy29ZWXDKAUUmTBiQQASwfwI6qeJwlv7LwLwbu9mqdINZNoCctB5msrMeY
	 DvJSqcXqMxz9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FADC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024645434.5879.12409492399427091327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408992acc7b55b50c7baf871c256c3a9a536712bfc98821d8366bcbb77632424
Date: Mon, 05 Dec 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670246454
