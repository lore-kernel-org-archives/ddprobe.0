Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D273F6AA6
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8783CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671140487;
	bh=k0iIRfKbwr4s0XtKUPEeHALSuKlPzr6U/FZeaIq9/cg=;
	h=To:Subject:From:Date:From;
	b=Ts/plilwMtAOOCvDmyaBrTu0ezlMgI52uNrN4FJ9aVf5gKvUb9WAZWzPdFCNyV+xl
	 OyBSW70UZvdodGBNO04+xdLRcBe9seBqwfIBIf5WPpoKbGSKuZuJ75Z0udOLQ+4g8s
	 eD+zkti0KR2N6CQrSFXvT63ihgY6nC3NrxRYq1pvTz2dvprpTHYIOz1S2GbjNv6fbn
	 hNAVw6cVnEhLtJstnACLbOh/UYjIUxjDKTmxVnFNCFMspvHEqLN9aCW6jNWTHe6QgQ
	 74SFPx68G524rWfTLlzFwAYQayL0s+lA1zFh1Y4VJpN0QCgdjyjRSSrfBZbBdKPOvH
	 WUL+PwfNKobMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B075C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114048742.345.135149328327434110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b48c56623342edb9864085d800ccc598034bd24a77e2a08964acfcd684848c
Date: Thu, 15 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671140487
