Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D413567B
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26CE0C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682963406;
	bh=ym3BwhOQTG6oR5d+6P5KfoYdwGCRouqjYoL/9LhdMZM=;
	h=To:Subject:From:Date:From;
	b=WyScznI2YQOmzEApjLJfGArI54JtypaFTwmGFjv1OdhFXshc3H2BQOy5AO26bFrVj
	 OAs3yu9K9L39RKXiIht4B1ohJlygZDefTArHMo3EQEeZWWaZ89px3PpHKBaGuPaEmt
	 jPfBpPtjAispB+zT3tErhyA/KSakIiVDQ2LuBDcdQ5sJKdI9Sw/ITpQCigsSwhx/2b
	 qd/Yolw3kz1ZZhp//h9BjP/t9SvKuhPxCG8IKCuIiqqXizLM4XsiKXJ+gIr/b5IcRX
	 UtBLKvnJtjdTDcwjGheAjnt/9gaheqEp8YrvprYOF5f0CYN3kkCbX6YR5uIRL5bq75
	 e20IiusATEpig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 038A0C77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:50:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168296340599.3213.1643858275848458682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d5cac6ef14908c3b1df9d2776d36d849f10494269486e501183a8f505c004b
Date: Mon, 01 May 2023 17:50:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682963405
