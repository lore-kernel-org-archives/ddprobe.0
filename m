Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5EAA471
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E35C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667939454;
	bh=Yzm2AVOi/yMs65pcD/6rdwrKuBj2SdC9yOXtG/eEOb0=;
	h=To:Subject:From:Date:From;
	b=luRVat6aMwKgkVMp6EU0f6jqUOwZ5gNH+sDlY7QtNucp8Zco5JM46Ud5828ujXa6q
	 dWb/nYiyUKsihQi0P20/1BZm6D9WLpOOAxkifBbOmgVehUKznfmbeZg1OhWjYsoe3v
	 PXSv7FmoaCIEfT7+4kuaHnQFEK2lDFr+qiegxHn2OL6xNbMaD2osG44hIHNJsV2cTd
	 JR7Hj32f8UbV1B4KtHNuIIFTqCd2Tm01x6fSTPZZi3qAusUXxXpGL8z7xdm8pAZXjS
	 UaMFtcRuMjfJu6613c5xdH1wxDQu8hMghGWJtm7zLVL+m7liX1A/2VaXBj29PfJsdW
	 ku5BKRJL67d9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B94EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793945435.24259.17867131080801230354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec6cffd603a846b9c752afe0a1bc7dffc1c4cc85df5ad2107888bdf9d9a05e5
Date: Tue, 08 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667939454
