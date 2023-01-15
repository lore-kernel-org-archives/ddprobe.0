Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C241871
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF86C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673797287;
	bh=vYJsrcedk6PDxFAqdbMDw7/Q3N9LVOn6A0YeKzHg+t4=;
	h=To:Subject:From:Date:From;
	b=qUFC26ykkrbUpSAiWL5BzHecoMEDxlpugFBPtFnek+NjmnTMWNLmcIYK4IQ3EPTUw
	 8kRqNFXpGZ7mxeCXNViAscvp8CKA9O4ow25JTY7SbQw9qSBmumx4ZHQp80x9TxkivN
	 YoGx9C+g+qR7hvIkr/9SA+JJOrBqzKNsH6+BFILawXxd7O0qFPDAgDUsvWElJVyUSM
	 GXxOFve9kz8la9hCDxIpyga3s60Lt1fMXhge09xMjw8b+sd/Xzpbd9+NTLOJ+s6vYE
	 bzqljtToSzLLbCdSgp0onyAZQh9/+xLXk0edLWcRC5bCTR2Wk4VyU49f5cM3iGnOEZ
	 04aWNIteJQ7LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C1EC63797
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379728738.12203.2630386464230863161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ad69e0cf9193aeee5fb47beb0241d72f68e16541c187038796f61fa256a8e6
Date: Sun, 15 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673797287
