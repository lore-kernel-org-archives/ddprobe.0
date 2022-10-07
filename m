Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE1FA28
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ECFC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665121253;
	bh=SiP8zIu7Epcf6II1YML8fz/a7nohEoOS2f6uN/Gl+b4=;
	h=To:Subject:From:Date:From;
	b=lOa7evQkrVdk43uvHF3O+kVidNkkehlpdD1Jrvte0ttGwUYNjByx+7mE24sOqe5YB
	 sNmWzdEnv0PfadxMDxYCghnLrcyaW/E7ir8SFTgweFZhuMfBii8unpKdV3BACyg0PT
	 9ho6sYPG5pUKbfo9eULhOkeOiMyCkZTZtohKmoikS1W537jjp089Mbi6xgfKRiMp69
	 R8eCc+Rusapj/N7Gs6ly0UFmx31uGi7YncUlZaQ4LBWoiaMs2ejb5IDVtwI0/fnG/K
	 BN4z2l6sTi6wadYzL9QHs6mC1eD87z+N+TBnlYWyi7laxKSa3yTX6KnDKlX8WkOqWx
	 n8U6gE1vOzyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A368C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512125335.14409.13281006235888515041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e884cc751720513eec23253549903600a239bfdf4608e7bbcea7f6c895a281
Date: Fri, 07 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665121253
