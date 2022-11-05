Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C72591
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700BDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667664054;
	bh=68hPIkBr6eMem8YQQXd/IaOD/CjzJMhIk7HFCmr4ZV8=;
	h=To:Subject:From:Date:From;
	b=b8cHAbryL+yKp/MMcNK77qWO9jde6SgsqQK5U7CadMMxyxFfxCVH++TpKW4SMwfQG
	 GGC8Zag/O33ql2LmgoI8jlVKoc56JRysLS4NBiZuANJDP+geHJ7+6yE73d503yUGY9
	 2gURLfiiflW4kdvPuyzXO20tAr22JgafhDliHsEdZAqagAEct1GSEe4a9JaqRxEnqi
	 XVZDjs7tZR4wkVDn7ThglorPIp3JuuG0eiADyJLG/ifdjqpbVvExpMuBth40T8CNdc
	 ynr6V0lFYR60IMac0fUMjt/mhndPmX9Hiv1/oQxaT7YWOWBemysRgcxgfJhWq2TlvJ
	 SM8e+g3LOT7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EE2C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166766405432.15903.14597717575082462929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06ac4c2e1dd6a1f9c54f2d2be80a6f2973b7205c2001abd7fbfa8a9e20de8bb
Date: Sat, 05 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667664054
