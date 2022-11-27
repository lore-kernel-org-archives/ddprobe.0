Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7AEEB29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA6AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669513254;
	bh=U52gA+XNJ8SyMGnkSOohz/CtDjdUjpSjQjl3TUOCaeE=;
	h=To:Subject:From:Date:From;
	b=imQxXgPXofBEMy7uG4IUv1QbfKnWNhTFLjo7KgEAwkqob53t3Q1kfZkiCR5zhqqW3
	 sGHdqTGzQYoLY6F3kam94z0GQkhCTiYYRFDXdkE1QiXYRWcet3LQUi06mI/9ScQszp
	 +5wg9Fknc10IoaKSCRWZ0BUQ42JNpVvOsuF8L7GhtnKF/c2564JiOHD6qSlbaco8OY
	 QhI2V5VLnVnUsiKyJcfgbcQNcTVB27ywX50dMCxRuidyCyTCvUtz85xjVKyk7O49PC
	 uSpAwgHwflIRxfrIPWEYab/IAsAlke13BfDvjN+IsbtqIFP5ULM4ORHm85MBiGGaTo
	 gd8gfS8meYPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E04C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951325431.8412.7985587865386098745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708e70f91b919e75482b33d89dd92b61923737326a422f573e87f17238397cac
Date: Sun, 27 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669513254
