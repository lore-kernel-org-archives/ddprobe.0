Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FAC1847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E631C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672362687;
	bh=Hheqwvl80Oi/hmV+lmAXY+yc3x4z37NoXmDQSbOpLKs=;
	h=To:Subject:From:Date:From;
	b=UyKEXRbbbDVcBnc/FQqcv1lgVf9O9O4pfki+HKBsEwBrZm3euwkxh1O0H6AeIcwuB
	 4GeHQ7Qny4rTPIaSkJMag8JX53pbfjFKNq/6jv05zMpcL7d/LHXug43admkwNr0jjw
	 t2XDvfwsf+gJXXv7EvnaVjKr3JR7dsjVVn8uLOXaT9Zuzwf5Dt1N1VZ/WtzePQLVm5
	 v6bN6tHmEsYV7fbfetv0Tpr3b4+T1RlYwJONrfkiQWka/HcaUBhNVBQ6T7IF3T3yRV
	 fwhlwW74ih7Qm9Xof25B8zNJWRCnkTyg0ywcT57JOh3QggfqFWHBrFmoxoiwDc+1pF
	 IOcoE8uEyXSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76721C3DA79
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236268746.23887.15295170438750469759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c8150a2bf8c4a881600633b6f7a88abcc13a31e8ed1e6cdfeb5a37d895a2da
Date: Fri, 30 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672362687
