Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E828923B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 938DFC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664877653;
	bh=w37A+sTPaVq+tHtaghRjcKqpvVf4Zzr7u49SrAC3Oo4=;
	h=To:Subject:From:Date:From;
	b=JVQylxE55adNYaDcgieZ3Gpk9Z1MRqrRq0OlLeJ+QWsvZ1YZNTKAHcDd6/eTaOVa6
	 v/WCgG9g3obkh+yTnd9hihEv+yi41g63W/OJqn+6fSwVSQb8L2dWWzx5SHyG4G0W7T
	 NcUxC9oNEMjpuZsUUN9t2Ze7LOR5q2Jxeyp/k73YKEfQTkc9EzduLL3ov+Jr9TSUb9
	 o2wVtcBZwllSBNW4jFf4xKrOdDZ3xa5gR4fjYocuje0BTLG3zsSsudseTENbgJLDCj
	 Ur7Xe3dxKuJaBDEnBV/M3Z4QAozC9/ixxaNwXuRpLBh2iYJU2EaIcE5sCvhZVrIE2j
	 0ejwSHC4n9JUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79778C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487765348.14095.3026225349479342814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c526fff33f3483f886500c96456e200437167076e32ce65d88c7e3a718da16cd
Date: Tue, 04 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664877653
