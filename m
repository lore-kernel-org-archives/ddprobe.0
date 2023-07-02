Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6BD191
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 00:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78D4C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 00:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688256248;
	bh=moJ9xdkN7HwwIfLRidhRCcp1v4+ewrWoRVHo4ugL0DU=;
	h=To:Subject:From:Date:From;
	b=FdT6teYkBSR6ibVBZY1jN+mvTsv23UD5gLrpo6MQuQOH7TLAkDORMlUpm8rLegywn
	 DkU74NniiKPn63oDQ1osZfqSUg4CoAlgtN/urQKGi0g7ob3072TYI312kqzr8Pm7zX
	 9GqbfSWWhfJkWJih5jv8Nd58oSFOp5UE+aOmb7PWW0ZBM1vxACfdrR5z+8421iYRb6
	 888ELf7YpfMCWqO0KPUQai6hWcTvGjZaAuEunJRY/cWiJghl5/HocxEK4HPOWihj/5
	 g+LveXX5B/N202JW/C+hq/+pp2J2bVycr6m5tAOAOCFRhGmGf/E442aPz7Hlv2vRVB
	 a2y4oSGKbzBWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD77EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 00:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168825624870.32419.17896264580060365793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b50d4a81606cae1642583ace42c7050cdf589e83146dfc19b54d5370805b21
Date: Sun, 02 Jul 2023 00:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688256248
