Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5A415EB8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0fDykYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DE0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697241428;
	bh=my/34kTU1bfyFNTKjvK0K34lMgIHPgr5bO8k5aKm3/w=;
	h=To:Subject:From:Date:From;
	b=V0fDykYNDvnRrRR88EoHf23F4Ju/W2IqV6fXsrXTQdNzr7yk8mOdQHT8tN6SbOzLv
	 Xx9NCrDHYMxJl+cO929EWRPi8xra6DUoJ/5yH/FdkzcIGjuiLvW1poedcUMq5JLNYq
	 bAPoMe7lgrIAJ1xLeFZa4EA8I5v8WsBRMHWNKQhbrYhzm8kmD8b9IzVeSvy94oSePW
	 +hoIbweTALK5pps9Vr0ZjUnSI4uFnOtKFMUczd1qe9Szu7AM1RwNfnEiJSJdtuGYSt
	 O8Vt3ETCtJvCyJCZMJRvOjWamJlLzMINkubeIToRGReb4qw7cVbyg4Ddhr8iPEODwF
	 GNxwTi7cWJw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5042CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169724142865.10614.4778026765341762794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af447b5c1c4c8fbdbcafc331003492d92afe68a93543e12121b4ee54863b4c3
Date: Fri, 13 Oct 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697241428
