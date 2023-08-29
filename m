Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B6914ABD
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7024C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693299848;
	bh=2wnK6x2hBsqyhY5QqW6hzrh9VrIazGo+nZI7lZTUmJE=;
	h=To:Subject:From:Date:From;
	b=LLDeF82yIddgv4PbIXZfdgI7hRjP7HLXobX+ThoVlerAepzgwg7z/m/dS7f1ekz6s
	 d8LrYJO3gl/web2Fy0Wxbk7k7mnWXzp0Lil29mVtvgg33lpLpBBMZFcPUs5J+88u6H
	 DUrPvsGEq0pXeZdGeM7lPeNTnOc9/JiqzqijPg/lxbqwDfI2G2Yh8b1B08WTsoTuGf
	 9E2L5g9T8I0hOnpaQkX2CpSdc3tBfcT8YEJKp5lm4YbGefWmgaxnC/OO4fmSZ34r3s
	 i4zl4xRR7v0sfnLnlwQrImCZWMdtDlDEfTjjxhxq1HxizkRSXxdITCaRwBHSrwxtwQ
	 XtX1/SuInM6bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1BFC83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329984870.9822.6138016589683058370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4904c958c44065143057125f57a15d0b47cd7a7ddf4fb5a033da53bd8bd593fd
Date: Tue, 29 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693299848
