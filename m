Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883C9620
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C6F7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681437066;
	bh=5aWCxakA24E0CZhrg+AOh/BZM982uAbOHzNFyeeoDFg=;
	h=To:Subject:From:Date:From;
	b=G4LitQAJSNUnedaWBJVPtnXH0IlAVFr/v4VhXn6Dwk2Oizwb9XCYe50Hvq8gMIZQM
	 zVIm7YRDqqCzuL4Bi8uPat4KG9m1aWbjBSZGL2vklZ6EvTMVwTrWKtIXGPVOoFHA5J
	 um7bcbMe4EZ5kJ+a9gy3cQzNQOtdAhDJOBk9JeponEh1sIpLzNpFZCkgu+9Tx7xeyx
	 VB8wHWcM+j8slkCShwEmBUIhDeR11ryhJfln2i5uPE+pU8xAQdVR+B9fLzx0sDRpWs
	 TvXhd2pcnc4bL/yQ7pqYYFir/bTBkTWJwRbEV+07h4aDm+65gxWcUWVJtXgtWwq4pP
	 MjUCAec2/2LRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE168C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143706595.23635.9762840736624107263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7170287a60a3f8279320f23e734fc7c5ae195212c81bb48c7a465048f599c254
Date: Fri, 14 Apr 2023 01:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681437065
