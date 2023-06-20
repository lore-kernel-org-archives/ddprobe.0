Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A437F9C3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AB4C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687253528;
	bh=rrSlvKSmto5UoeJlV3o4FUyYnll37yPgbu6YlqaZYgg=;
	h=To:Subject:From:Date:From;
	b=rKBmxkJeq4e9K/+TWG+wH6lRa2e9FBmYhb9OjrI3s06E/TwqJUENO/cmknSJDAdUV
	 N7ztEF02tHzG47jixsYfwdD38mnI2RG8R14+skg34b+ALBjZItEkzQcEMFSRDZ4ecF
	 egxxhQq9iSTv6ikvIIxxH5a6hCdNs5ISy+JFqjyP/uH3dBlqpgvq1hDhrZyiwgV2pc
	 YQqqChXXJwB7j/9Ozv5J03fFmLUerWguMXAl+++s1bcHKMM0+VYT+yfFM+C94rd43N
	 Z0csGxc4Sb6XBTkt9lpu9C0CW1eSJr9R1xJRM3Mau6GGJtiDGHLsuKnwQXCFdGQNQA
	 qPKNZWMTCHS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008AEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725352870.31564.11114698867466058530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d31a9ffd421b2c79e1f80045926735d5a82c9943d6b935185529e5801b0c85e
Date: Tue, 20 Jun 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687253528
