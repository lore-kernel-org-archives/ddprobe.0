Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B7063C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F36C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669824054;
	bh=Q7p9YWHJhE7BJFWJy6MK07JsOYkq6jbKDDkPWKfq0dI=;
	h=To:Subject:From:Date:From;
	b=j/BkU24jEM9jIhMcgdN8rDTjZI0ISP6A2dPj49WgRY58BQrl+RcGxKsyhE/+39dHM
	 lDf6XVL2jiQ7KoDEHbZ+tdzQibGblla4ODFPk+WmVK5lzNm9nmZg9yecPLnVwRdg0I
	 NuFZmhX3RmQliM/D74pdqCAhTk+Yny/BGPxeqMuDrCLnQBq7m9gk2bEfVUzNmYzJ1a
	 YXy4DdSRLtfyxQjlQppxaF4O+E0cgc49yvZE+nyuYVhuIXZLPSgtNyil/SqEQzInl+
	 focyyTaWICn12Fuek3qjHol2XQW5LYUICeZkLQHi163kxtVtaRT7K173eQiu5gQGGs
	 wOfWKRjJ620LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58169C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982405435.16647.3986965315116302508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bd4f9ce046c4eb889aaea1cc1eceb663869692f4b8606ef6fda69f4a0bba85
Date: Wed, 30 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669824054
