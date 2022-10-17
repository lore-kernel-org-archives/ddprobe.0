Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC125EA2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74000C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665973253;
	bh=pqR2nNiJXBYXDNZ8ELMdA4uHZXWT3/6tuKuznOaOlNI=;
	h=To:Subject:From:Date:From;
	b=jiHyf9x3kUj25WrIOudd8JXr9sOhQqdWDtlNmnncfS2SCY1bvmv+y56nKpufhQJYI
	 8C5mWcCUET7G5yB0ovgRhxDAekm0Cl765WnUD2HJYPJmd52eqJytIOItLGltwfGvU3
	 jqvODhBfosXt1h+7RFh6lrVPlR7tHUJLITFgFsiFmOZwFZlGuIM9SmHHH3eTzEnoSJ
	 gujgmCRk1HuY3wJRRKOoMvuoA12I4l5HVakLQy3Y8jZqMKx4OIwgO1sCyXdWbuciOT
	 8tHAorf4zrRY/7qu/WeJBfTVI82AIT0QmzVu83QOS5UQ0Gqd8gBA2eJ7UgUp/Qj7ma
	 I4lOz9T7wH8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569CCC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597325334.24010.1271552289884145053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23c40708b0cba5402a45f8a3e25190117c24ddbd35d93e3d39060272a696ae7
Date: Mon, 17 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665973253
