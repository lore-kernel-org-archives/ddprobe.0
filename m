Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CCE627
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A55C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665021653;
	bh=Gh3V6/BUVAnne2RnF9fhY7iTJWfLLWHMhQ6UgjMuyUA=;
	h=To:Subject:From:Date:From;
	b=bheAMU4zTUHHje6LI+JriUHN3j0EazKMe4lG+rP6ybKmR3Lqr7vNOGJy2Po90JBxh
	 jS00A+LrFLNI9JBwboWMBHcv7NDDQTFUu8sxCQcDAzaUpxaTjcveKFnVkJ7IZGqgbc
	 ajwm/pCy+wRWqZXUIqS9L6Nb7Et+KPdE53Gzu4nsffptu9ue2YJshT3mA+uh3Na6C9
	 iA0HdKrh6MWeuovf5LUn0O2b8sEDiNRugrBkc9LxuOFeo90P5E3AlCaPWN2nMGZ3Ud
	 4tgTwrNTyI4c/l5G+soLNQqIrHupT6OJFa9G35hUYhdOElA6XPyzzR/E7XeUmhEqCQ
	 m6lUw19Vis/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F81C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502165333.8819.11745962397653656020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a33a1afcb1ddd1e8ed8d7ee6389c1c681d853c4f013b70c964a702054f162e9
Date: Thu, 06 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665021653
