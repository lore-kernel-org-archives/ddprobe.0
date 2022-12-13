Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85492F21
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77ED8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670935887;
	bh=Bys5S35fNhgzCe5W9bL3P1jplQKE4JchblYjCCMNSCo=;
	h=To:Subject:From:Date:From;
	b=pItEHyszEv42Q1ZvLAGa/YYlxG+IFhXDElvaD6RYiAuAoAAf/6XRMwzEj4guYZo7Y
	 KmIIozJP7Ggc7okcQEnloOI7OTDxWJA5P75ZJajXl/G3gmFeIAB7A7UwfVEopjyO4s
	 j1uIpfaOdqRrF2UhE6qcDZarpeQunHzlWJ2ODFvt4j93pdTIWWd3jPPrm491EvIhvM
	 Nc8oWTy6s5TdwVy62zxt8bR83L2pudJu5XAr9Yuyot/0sfxWsydffz+WqYjykZXQle
	 YY0qX4CGpULyPPd+IFRzQxiu4622QKsbNgjNxHNwIdR3X6yckQllriz2hvPh35ACXe
	 ek9CbE0LK/VbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62881C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093588739.14651.12322427423988144221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822129caded7ea23e85f8ca21271ccbcec858d230b08e2b867acef4df16abb95
Date: Tue, 13 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670935887
