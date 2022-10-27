Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03A11376
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BE7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666839654;
	bh=dtAbhpdrAhBvZ7IaIKMqXZuooYAzRFQPqTthM97gCXM=;
	h=To:Subject:From:Date:From;
	b=UJsWSI0JET+ZcGGgBrtpZ9x2+ggUF5WsSF/oGUREz6pov0NY111CyiwmaZ86Lcw3z
	 9ikfXzVMfkcVxt3iC7DT4hA3yGE2amZAp1Q9ikRwgo7x6WE2zqYqWLs2OabHxTC/RG
	 4iqJCzyDtbKhsMXsB4uHhPwsRnDeWOSch+TovggqRdevddN1KRuvN2qH79/7efazMQ
	 SwPXgFkUHVmwaPv1yjRGHCM+d7ZZn0kefCoMnWbTu+eCeso9y7iOEmhG+H5M0JvJIE
	 urlHiIfcZsXdOAPZK8XaKSb17/uLZUfxrO4nJjcve8cRaN9ke2dJy073Ux0qwsZRbm
	 ciQkDIZSlN+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64ED8C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683965440.9663.9387098042732345807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f97d934d26cfca1968c4f8bd561488ede4722614e0000a93f29da4816957bb
Date: Thu, 27 Oct 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666839654
