Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D531117
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8C4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672230087;
	bh=ITnw/YhE5Q1L9oW/RTdjXTRepr46k4/Wx9Sp8Hwxqps=;
	h=To:Subject:From:Date:From;
	b=Vq5jyyz0SHu+yWI9/UuVMBPSOUgxcTZLRdED9wW/wGAv+3NgmScZxTCCyzEibVYGo
	 ri87yG7jM6OSyQ19CZ+uKVxko6q2VMqgtn2AG1rPcWUlde2ilr0AduD7Ki4ZDaR1yF
	 lgc8EJ8MGU91EI/Tm1sijkmPIV+jFjQ/Ip96pj/V/ZQycSzvGwy0CMOxmYroxYqWkb
	 2n7h4GsZaPQ/Fq8mIKX5Q9JhMIeB61VNYMwqgkwdUIxk/Et/6HrGCrtOJbqksHugMQ
	 8yW29sh3cH6zQdOntBYMbiCbT3yszDPm8aCSOzCaPD0WLyf7FA1n2iZkoGnIlH3KE8
	 mwK0yay+Y6sVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E8BC3DA7D
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223008740.31952.16110256213814961840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec8bace90fb6c5a6d933fcd9f5cbd572d805f139d8b966f9d175e6e60a0f03a
Date: Wed, 28 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672230087
