Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548379F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD03C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673545287;
	bh=s3w7p9IMUk5KuOXVjXY9udZs8yaPlDfqE7lD32VeEbU=;
	h=To:Subject:From:Date:From;
	b=Lb2h8LulSKf7NGc6w3b+ksbNdenM/fpIVT8CgOBgPklN725x2eTtqdK18eyvE/e7u
	 DsdLddJYbfP91BhgwtjGimFI4NTGeV9lDLm/i/UCDgk2jlDPgO0BC6A95Lcztkw7RX
	 3QJECeBjxfH9X2F6MuuMEJIWBLj4rxS/cCzWwiAiTVUB9PvV2iR0nfwcys2Ix8tRY6
	 9rGw4woZZJyhIHVYXuC2ToIQNZn/8fLxoa7b9Uf/udV5iANwiyC5WXLqtiWBNcCYcx
	 YZFtKZBTHnrKI2zjxCAOcka6yOO1hl6e+RmP4OVGRLdTm7ce9IMTJthn6REfRrgb04
	 ZHeVGJPfDmG+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D22AC63797
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354528749.7380.16910981014138906312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63713d063a6151822411124dd20faec14ae8d294d6a6c2fd978b7d09e1e937fd
Date: Thu, 12 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673545287
