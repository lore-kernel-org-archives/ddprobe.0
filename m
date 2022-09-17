Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB9F7C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABB5C433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663400453;
	bh=9Zr1q9c+/RiuPMezaYLvbIcFbXfBPzqDV32rC3sPMtY=;
	h=To:Subject:From:Date:From;
	b=NM5GM/bNW83nRuomnr0hAoKj4Z3Dvk2qETVKpjHKGM/igHEEnEn6Ex934HBbTuvlN
	 EsAXAjX7Jy1RymsmJeikIBQPUfxmThg51digIj+xhFt8HO6mkohqh6wxQvQvHgM/AT
	 L//AUOXBJ09PV9WVk5GkRFjQuS8SWCmTo0xi1aMllsIcWl9U9OWeyDiCTu/PVI+yCy
	 P+MYM/4gYFAX/1HVf2S8YydOQ4tWM38DTwOKV/fYZ85DI59ZZxfxnmWfLeg7khFP0W
	 W6JCv7f4snvHrjUybPuPrXYq4J+oLNqaxuxETMlAtAXBJWN8OEYWO0Kbu5HoH+yO3P
	 sD+DHl9dcjdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F221C6FA86
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340045331.22572.9881685525724200503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c8a7759f53935cf2cdf0ff9298be6fb8959172c237ff9d8531af7308f7f33e
Date: Sat, 17 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663400453
