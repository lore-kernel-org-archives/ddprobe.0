Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661F017735
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E233AC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688149988;
	bh=pBFIJDPzKWZOfoTWD8mrmNDfcqPAmjdtIJFk+QRhaEA=;
	h=To:Subject:From:Date:From;
	b=F4spf8aeR6wJtDiTZugF0IbfmdLpc7vKf0P+iUnyYbLFnndl9SVCLVHCktnwko4i4
	 5uzsnF4HQ6x2qBU2EWc7cDS+KNOW49wC0tPsJWjq1ObHZ7pymUuVxMfMuc50TqatPA
	 CThLmWZfF2WUu/SaaDMNPdFOe1eH6OpwtM4+0QzlTddqtb7JHa9zDGZC4hlrrqQZ1+
	 tlEYMwt6QedSCicPa1scRfO38kzcdTm4L1tBSpXzvSgZCFsTpm+PDn4A0VR7gkwdyt
	 SdLtFg8fDOsB6W7avFMYu57G94vRHIZGYbBUrvf8aINUvQhPgts0GM5mHeKHt23Uyf
	 4l4xKAfX3rCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F6DEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814998877.6237.6096944409615917540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acc3c9a87780ae9359a697c61bb9a99f966e6447bb07588383aec9fc8f93df1
Date: Fri, 30 Jun 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688149988
