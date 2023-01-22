Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567E77E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD2BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674379926;
	bh=FSTHPfoiRNMkwdnltdFrMJtXWloDEP+9RSyq1XENz9c=;
	h=To:Subject:From:Date:From;
	b=FROfuxj2hqIuwSDhRZV38SFu9jVI5+KTQHmdtW59K43EJ3kEhHcmZrdWICinJfmRQ
	 dz7N5zcbK21VYUlo9VTvOKuQN1rbFjqcCQ4WBw4J49LvGT+B3gUbqIZUxoygoQcc8Y
	 Gs9LL+qt5CS3sswhonoHA5aWwZqUi53PTvfDHDp+Kl5Y5sP7+h3EspHtgIU/DJJFBp
	 3N0nD/wBQLHJ9YRouQ6sBhPHE0Sz2GmvlCKSk94G1jNWnHNo3Zftd9Bre113o/Tf0U
	 oIqAtS4uaPXvj1g27Op3ytRwUOZPG2IkVmjy8yJBL4bsU+4yk2SKvH0cZr1r8sTyUY
	 l4Xi+Ne/0N3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD81C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437992584.31606.158580650178611049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0010c011311a0c4fad2f1403a4b894d4ae767fcbda6d5923cc3fdc2bc2ab61
Date: Sun, 22 Jan 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674379925
