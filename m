Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A82F1CF90
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD79DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696441568;
	bh=66eQNBIFCb99AjAcM+nqT9Z79hTvIVM1I4iZSV24X68=;
	h=To:Subject:From:Date:From;
	b=mjWHYscJ5MaIbhogoG9KN3Ve19eV32+CqjkCsVaGaqvZ+OBkGTPoqgXzDNKdWUDCH
	 ZFvqDw9OzSZMFwfyZ0dUnOhgs2qKdV0YTeS9OzrmrVV2xHB0DMVRRh20VyP4qs8Iq/
	 L3zDhb3GkRiIunVO6CJVPXIY5YfyrMQNFD15dldyDB0tI6n9IXp/O4pHZ58362dTSs
	 Zv622kii/7BQz+d1h5JqfKYujITunIz4ou7Qr3dI3BZodmfWK4frjz7LIDsE3KlQxi
	 FLoMBjDly6PGmbTpCJvdiMkRb09cw7mmtDE0HH6GNqt9/lT9aabwfnMKHZ4Ei8HuNz
	 P3c6m2tTH+KBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72C5E7C4E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644156873.31306.7601732590227085359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08c76b02487d21119ab829c79e36664352b9531ccb6ad024af37c8bc3dac6ea
Date: Wed, 04 Oct 2023 17:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696441568
