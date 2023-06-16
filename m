Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AFF2E0F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C852BC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686958148;
	bh=bNg7gCVlK9nuFOnS6b0KF1/e3x027lJ9TXL31rnNufI=;
	h=To:Subject:From:Date:From;
	b=qlKfoTChVUX6IctVvIVqvwa5drSE1XAEHSjVi6cVXUolT7YNN1p7fCBp4Bq5fzq4S
	 svVxfTZm25dfFoBQkJh9pg1pOFdoBZVr1Jt6n6VWSLKjYTCEmpKnY94mWaN1JXuf/h
	 XZNvL/whoQlTkhIvnoSlriPE85MGULuXX19kkncYv2anhwXsp2BSkf5Te80CD/fGqM
	 sZul0MedFeAQ3Rb6OUTKGTI458Br0pEkphVh94h3gp1U2fHD3QKdhRuVlESLEbFZWD
	 hLUk4ZgfEYNyC0bnzgQWWtiSt7Mav+IKsj7204GJPbaQYIlquKfUndioYyDSC7CQ85
	 rfd2Dlvwtb4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8580EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695814868.27853.7285061105758230647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b245567eec9aa367169d0276c1f015a534f62119ed17f3160e7851edae38be
Date: Fri, 16 Jun 2023 23:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686958148
