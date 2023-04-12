Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C553C02
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6C6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681300326;
	bh=f2uyhVpT3MbWIFcit+thfAaKqsyNQrtoYW6k6H/58Ko=;
	h=To:Subject:From:Date:From;
	b=cC6PDLriFxYI5t8A5ok/97fUs5bgKPlGqYtIa3DDdR9A4lAVLNsNY/W1lDyYiD3Wi
	 Bp6/Ed3TFDwE/KRRvQVi1gS4UKnqI2sDCbqR6I/ope8z9ixPwp3m78rcGBtThdw7qY
	 nEsIR/kBjcg8GklhfYZHb6pUynNHiAMj45R38mXPDwhv4UgtoWFSXJy+7KDhzqsBpA
	 y1IxmG28PvbnM4omPdFQqRgfm8wjJGjH/SLOw0bIyFiEhgFEM5/hO2Z/67KEmhJ4pq
	 8j2oD6B+Ju83p1wO8/o8OPescMmHQC0A90AgLyg4YmXrKEXtxcEmi+9AqS+yneRFeE
	 huTLAZv+BhKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FC6C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 11:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130032578.31205.16212163071037672651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d46ac01813e79ca4250938860006d1a8b02ab6ddca29d45b514b7ea054ffbbb
Date: Wed, 12 Apr 2023 11:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681300325
