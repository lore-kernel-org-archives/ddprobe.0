Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616942F4E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1138C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691793788;
	bh=yCshUaQe0mEstuWTJAbfdlIWmOTDXwG+bDTSVr0f3UY=;
	h=To:Subject:From:Date:From;
	b=LrBEM6C5vYGNYBlSe2NSRGkLlO3LMraNXF/ae1CoY50ut2DJWFNyh6RU3O6VXt+AW
	 99J/EAgvKz45kvB19P2U3rTxq+bMRakr9DPoVov4PtXYAr8dLR7V2exjTkUECzoO0l
	 MhnA4nGtxLVZ1WcL5xwIsvUJ/PmwqxQa+N6r2AXjb2IowBSpgogrGyJNwubc1XmFZU
	 RYxqr5xXUW+ri1WHLDbA+z4Sa7HdLgOryj+vOzNnfWSCCkNvLL06Z6EKr50jprFWm6
	 j9X3ifv6ifuW6BGceRWqnnBniNHHh7baGXwFCc1Y2AGIO4uH1unZt1UzbBFXT4yKwe
	 fv6IfhgX4Fs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE4C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179378869.21346.15354987059989927836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a8d4e762a3028fdd3cd59578a0da344dd3454496cf917b58a8f3953fb4c4c7
Date: Fri, 11 Aug 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691793788
