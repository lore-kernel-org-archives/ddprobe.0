Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40491FBD
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D75C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665750053;
	bh=jzJe2uh4iXlPk+ORs7ApnJlTomq8zecKHHmGEwYjkIw=;
	h=To:Subject:From:Date:From;
	b=Df8/NXEAjHOVyZbSh+epHdB4rjehcKf3cz+iE4JSeF54iE/zTPYRyNHd6AoTye7X+
	 rpe/T2LTPr8TCvWMVfEMAU7x7otaEhvi6L4kf9HY7s/A8TrU8v36TvYLQKh1GWk80F
	 gXnqGehc4YJFDC1eOrCpbitAHL5nPGoLnTd5mVOFMsjKbZdSeA9SbA9oKIFYqx9iD0
	 is8GRORYWL6MTSp9Oy4H/CaClvfR0n/k+TV5ffdFIUF3/luAtIMjmxTkvDeMafHpb0
	 mybnoTTezb9cHkU6wCyfcIlf+zE0FLFQQLUdr70WulYSGMBt8ceBmEDunTBE4tDiLf
	 cuckt12CHzkjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50734C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575005332.7901.14728406612976268481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246ed8785346949a448ace4d81bb689d0bc9836851aa598f13035f44147f7de3
Date: Fri, 14 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665750053
