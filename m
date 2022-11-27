Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A3717CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BB4C433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669554054;
	bh=ZGtN6aUeOq9QR5QiOpyXDKNI+z98zBmqWPOB7SDQerY=;
	h=To:Subject:From:Date:From;
	b=Yznf5oxVlz1ecw+ICf1RBMsTAa5OHeJDPczfX0Q0BdwYChvjpFDEuECUKYkA4Shqh
	 RGg/CM4lQBvqa9IhlBey1fRfemGJ7VqMCofKBKXGWoQl2w+qqMdVHUTa5baInnXZiX
	 8dBqZ07selLDxmmMe+I1DrdnU4YYp3PxlDhB0BI05vfZAxVXKUykKaJ+AhogZrLXof
	 mizfyQmcerpHny7Z+j/Nb6/L+c2UtYkekuX6HsRozeiEfq0Lns/7Yn0gB6lnABY+PR
	 iGvgdWiMorRwLgrVMeq8S1W0dgHh9k59c1HhT2rz0WgSjiYWxnVRFw3vcwLF6XVJSt
	 TmQhEMFflVh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59264C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955405435.9207.7213831941168201454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f5ffbf9264e12d2631a9df5d8cdb99b1e09f7db773bf7747803ab731d13a73
Date: Sun, 27 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669554054
