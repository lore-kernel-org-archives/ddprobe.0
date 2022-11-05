Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18981FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C232C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667646654;
	bh=SfWMfAna/eZgXQphKHQEk8+N6wDot6HWVBVIPUdQvQU=;
	h=To:Subject:From:Date:From;
	b=W5qKhyMLB6cPFvgjuWZz14Zeeum8CNeMKhMrgAhlfEuIIhSd4sS2FjKYpQTCFpjvB
	 F68Ea1p96dasuDezzJa6BNhzIYq1ekPYObj9Adtuamy0fTZuNBDx/+LRlWscDteWHj
	 TUfhzoQtobirAWbFjwPTLJPVjXeEHJNh9L6fwKEu+7OP8olkyc23RegfCsyDH/AVtK
	 OBCas+j5EOY/xOclvvROHFJ736cjSXO4xUqQ9mjXindjqQJU18xeeCOwXYZm1fs/KI
	 95t2dRf4keGN3/IHKgf81NvX+P7wiJX/UKpQOAuFiLoYUDX77/TawtfqkGb2hrVPng
	 VDXK59jsDZ1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F69CC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764665431.2644.12768342734729193412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb26dd6ea782a74ef7cb0c72483bdb49080ae7e3a5d5b36f5d080cdceac3923
Date: Sat, 05 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667646654
