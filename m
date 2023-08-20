Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7634117C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3308C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692543248;
	bh=JhCmDrBkJepOrMwFRH7oUrGNzq7aM+yLaeI+S/JuQdo=;
	h=To:Subject:From:Date:From;
	b=VtVLCC2ZKJpA3LeT7jzxSIaKe7QLSCtxwTIHXTgXhLI6xmwyqSfrajHbDfBTdINAz
	 6FWzgtuTa9m7fKqLRFl/n0cmbI3FjX0F5Q8d7LHczbqROUBSvtfi8Kz9iLAxTddqQn
	 gexXqPbx/1tTZ88e4CCwdHsJUfZGDchqQG/may/XSvL2Hl4i7VNmunzxJeszj/PICo
	 VK2rPdfOC8ZayKB3u2mVVK53lsy+yQvTp1CW9LequxSPAMH6yh5o9rvqILhwaelwOm
	 TJaOp5KCZ7/SFMyEMFsLv2ExtOeYdezgtWFzWpAb17Fa1AD0TOeozGwJMjZRr0lQob
	 z0Ad+FV0N1OHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D64EE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169254324869.29984.7151633568213095060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffa0b6c25731e4815902308c0fb51226f607ea7e4520f6a4aa1fb79e74ef849
Date: Sun, 20 Aug 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692543248
