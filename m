Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28520E0
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 11:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD474C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675250045;
	bh=pMNJOxwqFs5Cx18nPPn/y+amWoOfIz9Jcqn1VD382lY=;
	h=To:Subject:From:Date:From;
	b=uzOnNsRj6Piq9U1SV/LhYxUOaD3U9T/LrFi93ujxLWHb1+4IeELbnrd89ahEoArjq
	 Oy5y4iAJNyaU8FYHuxNTFg8uaAhiTIRdWoCOxaO/M4lEvbWW5MfJLXuRUImlBUvGhx
	 roo5OpnYGLUoNQ6K1Z91rR119wSRS4Lmo1DxlNGdPuh97sbKpqygmWiGVnYx+PZ5Tp
	 uJCSWerfv1pSmGC95yX/295dYPcLZ+j5lGkuqGGgrrQlpAW/Gf/Sa63Ypim7L9CtyK
	 fFZQSwgAWgtw31gyv+xPHxUlsA9WUrT06fdYK1rt/1rMtTYpwA3xInsXJrls04/tPm
	 1084sgtEW5dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A98C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 11:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167525004576.18636.587254059782012316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a487abac35f92f6d1ddf199ac59a8a140ca735d0b8d6172693f1cade100184
Date: Wed, 01 Feb 2023 11:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675250045
