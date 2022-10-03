Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CEF33E0
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC46C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664839253;
	bh=WG5bMjdM4gdHkZ2dEcByBN7YVvURF+fn4tfcJnjfXYo=;
	h=To:Subject:From:Date:From;
	b=CxlSGGiKB/IUCvuZ+IdXBHgpl+cRBmfuNs9PyJVXbW+QMrvyl9AUS0Qru94FrmKUU
	 MNCIUipKsG3xUseoBOerNsW6unds3yapToexGEelWouBeMNI6IdmekfSs+MN2TA0c6
	 14jnmYQTztnFpEMt9VH7RndOVj6rlxCQFjvYTLom9prcUHXoG4Z5YVNKhDC3p4EyZf
	 /SeODkUQZ9CrmE74EPEo+awpDWPpITZmU6ybC8XsHInxFYpKDphIpPHEoINjf7OrT8
	 jcxoyrvlxyzgP2EHvrKMCx8fKwy6iwXlrTWywYR01OD6nns3UV0/xgT2XEzfI7cnDC
	 9qDJaOf0KEZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539A7C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483925333.8024.11712123831667387621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e17bb2f7271bae6727215ef75a885749d36ca8d4afa2e955d62c4769aeee221
Date: Mon, 03 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664839253
