Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C2E46AD
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 949FBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670711487;
	bh=FPBycL5NSVTj/aTGcH8pH9HkQLidyHJTGdu7niV0FN4=;
	h=To:Subject:From:Date:From;
	b=iHSVwWejNGY/fofxjskIamt8Eg/42TFIFrdGaaJUOoRJ+3+uRT1cpzcz486nLyt3D
	 82SkRu7KeA3hxSQ21NrsVWrOBRwVCx50mzsWliqv3anwAQhjqTfkdtUzk3fSNwuTeG
	 zhC2+6LOvGn+Bre06xJ1VcsWr4KGH3Kb2oEWx8mmnpdskcEg+Y2NMieBoCng8DjyfE
	 MOzGZ4qFKK9+L9WRHr/9qrs0GNvDyI8rwXxQZ6CgoEwJXT5JEKtL42H8qQZJooVgxJ
	 gtkNt6zDypYMlXt9ArqtioIqb5zYhBvm1YhtP3VGKCbTTYW7wkq4MaVJI+NKmzlKOk
	 RK7AVYk2FxSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75D57C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071148743.11307.15546635951967732236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678e93bbb3d5e85fd011a1a76512430a7b5b6916cc1e63121cda7cdd287ce2f0
Date: Sat, 10 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670711487
