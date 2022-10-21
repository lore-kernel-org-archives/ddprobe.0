Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFABB17D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69631C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666330253;
	bh=Ry8dUgzVmIRUK7aGKDYOgHnMgfD6fbS0FTfvLj96qwA=;
	h=To:Subject:From:Date:From;
	b=HKysCacIvdQ0vpxyUSuWuFZVtVCc9Qm9vWtgGr9VE5I4BQjNmST8+pU3WMEHfRs3u
	 ud8SYn76qltYaE8xu4rp37gaFJoKFQC07e5/QzpI3HqeAc/RdjehbtdbHwpwEJg027
	 Bvx/Jf9/cHgIgEo/KwA2mQajzV4fVHJJj3wHrxo58WPXqwZj9Xm2tBAfJnw7A5KIk1
	 h1YI7kntm4LmhRenle+BvmOGryIJUfT8lvpttPsw8oFb+vith1PmFYY9LCGNKOjKoI
	 1ucmU27AcqlXmuV5fQpSGFWWC663aXY9dbf8pIAMcxqMnYqBizndKNJRopiMeJB+BK
	 pQgCbZ6TkRTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4CCC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633025331.27310.9332326297908493773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43af4ee00a8d2c78523cec167d2857d85eaf26ef91b9835ef1b39c560bde021
Date: Fri, 21 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666330253
