Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3456ADE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D228C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673615487;
	bh=30L1I31CxSj4pJ7e3pXPKSWZA50zW/bx825mcrNrX3E=;
	h=To:Subject:From:Date:From;
	b=apCwG+8Bt0+HpkLIEOMCFSk1nH6Pmk9hJK0g4mgfwHPwAb1svoWmbDkdQLMNkW/Zk
	 qlvN3R2GRld3yPL6PybnprIhFmaaZu1gB17tfva4lOTpoyDkhh+0sNts1dgP353uzM
	 OYRbiA/Ky17pLQVAtKobFH9ipgYvDATHUrUMlT/CiIW/FWFPdmWqKFhC9C4D3b3F2B
	 s6C/WdHJdbCNzIYvCjr72T1l7PHGk02yatoxG56HP2mFzVzo6neL6k+UTNCEUz/9qH
	 UkrUiTX39Buvmk8OYW2SzWb3vgh5eKQR1YaeCzBOI8ccaBVVvULSEBLRl4qrGLJUwm
	 6o7VRjTeb5ldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D02C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361548739.1743.5788510486138565517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6033309657bf321ff76228a5c49d288de7f60ee6ffda8d75495a275973a1378b
Date: Fri, 13 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673615487
