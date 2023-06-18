Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403981C39
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E05C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687105808;
	bh=LPFVzQvVKCdfgm+o1st13Oglw8yc5X9eP4nXVatPFo8=;
	h=To:Subject:From:Date:From;
	b=mIsKHpN3Z3YNe/Rw0BkBb83VL8kZLAZZOxrkAUWLtL9s3sz6tdPAUbrDo1jU7V9hP
	 jS5qnFyzzpHyk4qGwiujw1gqClItYh9CteszFI0ikoclxMkKv7BM/Cc7Hg7o07snSW
	 Up4NgkoAHmLJxafZnMPXtRSX/VYZOobXylem2av3/Mlb+gSIkamYmAZGTxZGZ4zvJ0
	 cqEg4yhC9pmJcresbowVrW5iSwparQeHP8uLX0jvAoOb53KcC/QnSOfiiuu08I+Mcg
	 qHoQPQsK8KD6FaYBu5WradqEesyX2Ozn79cKtXukrRjA9ufPqXTKPUw0inEzU1eLVp
	 iZrDL2QQs8OiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A706DEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710580867.3248.1753124525573775295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00260ebfefd305dc6d77b86d521af1f98070cffb6e6614343f22b764a3da69da
Date: Sun, 18 Jun 2023 16:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687105808
