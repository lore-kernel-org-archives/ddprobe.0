Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C540F811
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E519C433D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664964653;
	bh=7D/LTKfXd75eChUUgp5PlLckRTWZUOYXZFkXcmor75o=;
	h=To:Subject:From:Date:From;
	b=SQHWHKyvZJgbco6Hwm1BXK8zb3wGuMUL7hD9OqP7K0O9tJmF9E9zcjoMwcvjQMrji
	 clVvASItKE0vdUILfoKD30T2T9aJVORX3pbe+f5aq2NFQl/LtzV+Kck0lsKIY9tYA/
	 EtfG7yX4sBQqT+IPRzbRQssjao4QfXIH5SIzO6AWn47qxo3ma3dv19pHponYKovfDy
	 yyaSWzZxnSZMvnpozYiWJpWy7mnz311/P6fGvXp4+IiYlMcLto0fliUH33di0s6XTU
	 P7SiEweAQHIPiPvAC0bo5dW0tJd6DPysWz1OiLgiWU4GwAljvsjZ5bjFUADAX26Mc4
	 eptCLFoNCO27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FCBC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496465332.26019.709785944234575337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4218032f24bdde687c581af2094910fd11acf2db5c86b54a95b406065a5e6292
Date: Wed, 05 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664964653
