Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426E763DD
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CFEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674578585;
	bh=r2CgdP5wRXUtzXsHeAndux4BnzqARNtzAG1Wmu03o0w=;
	h=To:Subject:From:Date:From;
	b=REXYsA/fqagqRqkK7VuPNj0lD9FWks9y4gW/yTe1rHbzOy92NljRQ8kyLWJMPcVKP
	 W8Ynd+anSrdmcHhQkVEYt17ZHuJZBRTxvLg3oG9PFJwgrmWNJSmtIeaOCT62GYDuJj
	 FDAP4ji55HvRHNgRevDlY38u0WWxBHPkDurgBW2khbhg4pFksF0qCth02sVFCYXN45
	 Va+tE/9QsTLryOS+3DlJQltMpAVZbrXnCPTgyCRhgSa3x4z2xzerLSXHZ50tChOJYq
	 pEW26/2Z5cqdzhuB/52Yd157Oqe9WDs96FwjR/tIonY8nzDgtPH6eRcAyAYfKIBfYx
	 xHeznT1ezgfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4229C38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457858579.25516.15615092500434098745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fae8b0cfeb8a2d0d705f6041ce7a6330ed773b3d3036f7b97cb6542d844f11f
Date: Tue, 24 Jan 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674578585
