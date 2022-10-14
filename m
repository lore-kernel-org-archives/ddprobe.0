Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A928128FA
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CF4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665758453;
	bh=cpW1S6nlKmI64AbWxurVNa3pFmxWAE7I5CAu4ZWx4w4=;
	h=To:Subject:From:Date:From;
	b=YZztw+07GeDNdHxWfmwQCrHnz8kEORFPxux/bpqDD3WCY3JNsQ+FmRpzEVLQRTuF6
	 I9jX9FTIuQm+PevU+ClP6xxNCWeE4tZ+ZJudOZqyl6U4kJf/nTMfMCX+v48dkVC9zo
	 Be69PlckBRqIRF/jxg8Kzc6SvRsCjp33i4otANllx/PYvM3H6d5ifPZYiBSTVjuvq5
	 uYCgjpqRvlJZB/wXH/KOmJTmKaiT4PRQueWCB7FaC4GvnUZXu7HXEXM5ZXybYQcs47
	 WYruAAb+0pT488p7hGtD0fvBz+TzAggO7LV3pV3NMJAAYdsjYuBALr55lo9dsWlZ2Y
	 iC/tRY8bcqldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF23C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575845331.26700.7990855566760665500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f984f534f105bcd435693282692051e219acac2040117d1a4e49235e5ad6d42
Date: Fri, 14 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665758453
