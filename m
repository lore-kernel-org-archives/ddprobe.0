Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD72EA4
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D622EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674540785;
	bh=ffVziwuArxdAJ2/PfLCcIkGwVshPXTSYo+f2MjPZObA=;
	h=To:Subject:From:Date:From;
	b=Hd7UFnWkE3OgwElNW1lx2H37m7OBhKp8PAO+ISuJSYKEQstiHAZRmSObVs1Tf2CGS
	 0O9/saxYqTOuLSnLHnr77fFkksHXavWb+4GV49WpdPM8RGlL/YEH1f+I9/VHaAsGbW
	 2+QaJn6QsarA805yb4llE9iXmAULI5E4sS75x5bvJrdsfvY0NJLb6KIwMw+BqzZfUV
	 CFsaGyL8snr3ufHbuvERgjuTFvBTMs+UkAQ0yXtmfVtvTiEPaxBxaf34ZKSxIqt4xJ
	 zN/iuxVEcsJKBEAjV5XEEzcGSVVw57AriXiOTeAwX2F7KkF//u9UlAuTHIHNpG96Ub
	 VuMQwJF8vEKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE9DC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454078575.3114.17302343847512832361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7530c2d8c7b9d1ae1001e344227bd3d6b3a1f8f5fd8fbc311384b05adc30489
Date: Tue, 24 Jan 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674540785
