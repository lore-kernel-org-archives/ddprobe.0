Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C75256D
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7378FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665169853;
	bh=ABkv2NnqUnLozWsjvBTrzHiOf1JjCQaJMIDPgAYIFmg=;
	h=To:Subject:From:Date:From;
	b=u/EaAufEA+ocXvdIY9tijrdV8oWMorn+gxlTbmxZesvQsC/hHBaKzlvJtxgSfCTai
	 MFbiYwMX80XQKhlXlLkZVVcx/Tm//fvUshbzSyv8WF1PkEokBHfxJ7kaLMRVoEKzBm
	 4u4d2JcZMiDcIdQhARdquUU2jpbpNyr4xtYYiYR5bAdCQWev5jBOl8t78zjkGnEGAg
	 5CZFUYokce3+FipcO37BEM0GtvFLHkeQ53X74VeVX62rHJ5UH+XoXZtRmKoos5hF3n
	 19g6gVv1BYDBkkoqtY7qRP3IUmyoVjg2tTNIvT6OmWfOg366k38rriz/P0wiQUe5Fo
	 qG2xvYdGc5hCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590E3C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516985335.14414.1694926649010377632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b088a13a4ac57f42ad3b3ca1c7f55b3d3f701bb0c83d044cc615899c5ee056ca
Date: Fri, 07 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665169853
