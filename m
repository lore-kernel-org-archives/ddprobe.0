Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63427E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9B3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672717287;
	bh=DtT8rVtxy8M7uVY5Q+4QskhUMn26yUW4gUoEEZ/VaKs=;
	h=To:Subject:From:Date:From;
	b=iuEVVZCMV0K0hZVlUY78DmSRhfa5WWeov2x77oZCJkNTbQAFhjYg+etQ7siRzrnDj
	 +ipJdYXPctISx4AVIWqdI0bVigCaZGpa52vvRAu/sPm1Pz+p4uvuyxT01aqnim5IeH
	 D4Q8l2XhwBQ2VtrOiNITXks4e7Pyyh60jGVd5qFWdrPODmqZ+svWZbp7JArkvn+lpx
	 OvEAG5RX4lB42GDq84jHP650+yMFgoNJ+/AwjJQFxw9jz/IlWrzgKOJHOtbo51sckm
	 suJDhcqtUdOrScSOxxdurP3z5Iqc5R6kEbnUiRiDvLqFeD5LuIa8LT3xnPISysvy9u
	 Ry8XuPF05OxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA0CC53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271728742.6688.12223331149207514282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98fb4eba3f474f00f047ade9c0fc3427c3972c146d36ca3d04daea27066220d
Date: Tue, 03 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672717287
