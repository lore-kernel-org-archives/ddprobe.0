Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7449933FA
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 12:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE403C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694954708;
	bh=X8+9zQhKddkOpT8jNkW3j7UIMj6/ZjCm1w6gu8BGstU=;
	h=To:Subject:From:Date:From;
	b=aU8r2S2JK5Zukp91ikqEHv8RzRAvH7pGfcNUIoXQcWynpjMQtmFSKDsoygDzrakxR
	 ZYCK2L4lw1DuwtjkKlAZs07NGMb+sGmBjUVJocgK0+P//+c+o/pMSO3nWGc+BQVGo0
	 HMODRLGqVea7ob4wtIBIK+uEzKsqF+1SGrNYHqwFqc8WOGQZqARMsCQ/g3aeJuWr0T
	 PhMuNVZKHD40+jKNHk7atj6aMHfCVoyjrpB7Z66nsdBZJ8IDIYyq2qIqt50RvTN0/g
	 0Pv8OmMn+sKlkztnt+o9CEBdg6e1cLkMWaM/fu0E4yTkFQHk9S5m3xbNNsNvdVsSS/
	 ddue1ErexnZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32A6CD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 12:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169495470866.27294.17301302022435048188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6921e6b6074325b9262d54b6683183173392b4f7bd9fd94d4a312bbd6cd96613
Date: Sun, 17 Sep 2023 12:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694954708
