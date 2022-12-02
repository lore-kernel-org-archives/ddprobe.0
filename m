Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAD51C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E30C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670022654;
	bh=dT+LvJD+xxptwxaIZ7Le+2YGJ3M0VkuVneX0arPr0SE=;
	h=To:Subject:From:Date:From;
	b=khZoyPlWpoq3tslUPurVIGhXP2YQTRsK/+YqWdelHgSj0JaAoi2Qb66qi3ocg1EQY
	 qVIufSFoADbd/wiw0uYmwu4yM0c5+1dx20Vyk3K/x5QCuJaZW7JqtUV5JUGAuIDs0h
	 wJc8brrGdWLdypUOWpL030f9YlGgHthgcWH0zllMvPQuVrsVEQAM7ZHLv4Ut1q+OY7
	 /yiAgW2IS8g9ZNs1A7WTMhWe3flPY1WB2VplpH48gcKLRP2KCBm74Ui2brp0vTNFXg
	 bVmbPsGeQFqewm/WCv1H9my99LB9dYhSuZX0O7sMY2yOdsv6i0zGsrDocKRwFGbRYg
	 r4YqOswm/lamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E85C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002265435.15860.6892668981586091574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530fc77e7577f9165cfa1ab2bb859e8f212ec277838271aef9fd7f60a4ded38a
Date: Fri, 02 Dec 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670022654
