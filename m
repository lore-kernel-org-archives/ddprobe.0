Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BE2115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673637687;
	bh=7NKUjNT4Wvfod69bU4eBkipn0EcBscygQPSQC+tXfTA=;
	h=To:Subject:From:Date:From;
	b=ry8fwd0u6wHkENBViq2s2ElvSDgwwhW++F7TW88OeYXWNGqRsmy4YKc33SVMOONn1
	 LU1g+JnOVtRgsHkDI3CrOOL+UrHKES2RUPuwoJJQkNZXQIigmOTrfIHVSQvI/IoT++
	 BfzRwBgK7ZO3WuNdXfBu2Kx/OswgRUBbN+ao3lhImdU8WHPZ/rCNnHT9CyscjiX4p1
	 K+b3xheZcKMziNY5lBegiUQhPCuVhD9G452TCNLatOwdy4d+tcMsuXnXGolJplpMQZ
	 VF7PLuvo9zP9Dau1OziZXUI2r2+iLbhidIeQUWbb7jYzHy8wZ+0EWDxr/b2wLf1jRg
	 WBXoHJ3hq9aBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74414C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363768745.20282.1614921851190565533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a78b7149852d53b6072324dac6954f6140bb71f2a424659159d43d88072ea02
Date: Fri, 13 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673637687
