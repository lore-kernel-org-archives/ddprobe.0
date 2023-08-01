Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC1F111E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FCCC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690894328;
	bh=Dp7YfUFUcIec7g9EDnpfD73lX1GiDfeXyTgQrxlQj4o=;
	h=To:Subject:From:Date:From;
	b=VUX/gsu/tRW2ej8o1TQGwiqPRIrpI97L92XImczvXwtSB2Y3J3f2kcdwVNQtgReJn
	 wY/EuW+9PR+eYPORii4QA7mOzt41SQ4Yq71eEtytLwtIhujuPeuVqcSLLyQGVooBWe
	 cA2mrqNKxouzAMUUcbpqM68fRqr5k7v2NYHZNW9grJxZbrWntczFk5kTe9wYofigf3
	 rej1nyeuUGsvnoq3d9vBr6TX3UcRct1csMps4JiMxfv0UCcjdogJVdR1JoxvanAHKn
	 IsbBk1VX9AgYS34P6qOFw1u/TJp83YSHL/Qo+1IvSFsO7VzxLP6G5gMsuy8ZtoUeJD
	 ulUr0xHIM/dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA135C001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089432868.32190.4761045063488091346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70f29a3766af55b9ee3a9e7ed7fde897f0b00b23cd95d86d62e61fee9207049
Date: Tue, 01 Aug 2023 12:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690894328
