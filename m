Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CEF2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F031C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670789487;
	bh=R/8XO+Zt6ihD4qD9EE9DNIRljkQz9zuBuiOYqZgIlHw=;
	h=To:Subject:From:Date:From;
	b=ofge35QWwwl038Rsqg9kfsN4MYy0ULjHu7L3AcsEePydD1NQZ1kAB9ovLvPGPxyiD
	 vfwTRsqqEsL9eZj6/jrLa2swOKfWRd9TzHCvUDl8VmHmB01fh6iDCNf2aM/E46Kbvk
	 ZtUmyKHUXu7Top79xFtb1Dd6HHf/7ep7MsDDjKqv/wfpwxY7T2hHrsdsKBHqve4H8P
	 tNllpB5j5gDXwi0K5WDtcrUvkXhZh1ga+C/Sc1MMu0ODsrVV7rfd+wZrxL4MqNXJn9
	 smhZRwdZ56z6zOEVzGzpJyGdXHRAbGRCIr9Y2doHRK0V74lD0Rnd26PnEhkqyUC+13
	 Nov0vohVX2BhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D13C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078948737.24339.14238727473634353572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cf42de0195aa67a6d6d940cde0fb0e0a35d2e7fc5be762fd57ebaba5e8f869
Date: Sun, 11 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670789487
