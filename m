Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37C1ADE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED28C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691655188;
	bh=T6+8HW0S0koMLYVe0gdZVdVBs7uS/98ISxvaKTRP348=;
	h=To:Subject:From:Date:From;
	b=XZ+yA2LFn9xULj6A7ejHSqkhFeoskDZ3QkwQvxCiX9JLvtbjvYClseSHzVM3gVPZY
	 0YV+hXjX+mbJh8NebirxappL9+MA4NFJ2/axePendQHOoclFSEIZHhK3eIUb10GCae
	 fCKwUdYskxFDEVK4FLiU0fVSNsK2hxPrlin4k0hHv39KTd9cxXbDbPe5/GEZPTg5l1
	 rNFVBu/pXxnBmSiNNIme5DXl9f1Mj5VtYmZbN3Lixz5yBawJ3js/0SCp2rRXFFgdMk
	 dSmaBBKAahX4pG3UPV8eJru0Qze+ebv8DZBE5oC5XwapEMus/VtWBeXDd/aw1H0rso
	 7vAwHbKdWH1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72F1C001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165518867.15661.3646298633873086350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1b48ca6c4e11ebc70dc4af86f453ccb777106f9df99c1be629c9007c9d2544
Date: Thu, 10 Aug 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691655188
