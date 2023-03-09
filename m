Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550FA628
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 02:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF4CFC433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 02:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678327866;
	bh=Cqt+Z7jOWjtFXvsp3U1an/fmMIHz464vz/+ZrvW2Qx4=;
	h=To:Subject:From:Date:From;
	b=Cyj/Fv17gGgiUU4sRm5iPdoAgS70qufnWfa0bDeMsO1KwhLxwE6M8Q2MJmuoe9HiX
	 etUNVSiDm80MIQcxtJZp0TYF/xyfxVOElDnt8dyXfgMq42Z5VuAmhNdG6MXIxUsI6v
	 iIn4wBhM/aABRbl31aaF31ij7+8Vk1oXI3+/kECx0xddPAccRBnFF7PteLd9gprV1X
	 67PhedA/6iVXApIAAuibKkawiHDYccKg5r1HZ9KyVnyNtJ665vEbjS291RwxqExzFx
	 QpmP50OI+SzWdrheiwgLuFuB/M4kTjXb1S+VqYTe/JzksxWIdkYKqVPvkVxgVByyZV
	 hgXcpf2PLb5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01F0C678D5
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 02:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167832786584.5453.3113334440458055333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce576764039481a90d0e48a33c389bf62a12ffaeb8e67bd70c32cc0396070cf
Date: Thu, 09 Mar 2023 02:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678327865
