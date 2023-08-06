Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554053D63
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB09AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691341988;
	bh=JxNrC2E6CBQwLtDMzdz2UzvW05hFwucdYVnht9/8lf4=;
	h=To:Subject:From:Date:From;
	b=AeGOI12L8FS8XA1ZL61ATPWsXidI4igTNhw/5zH/HRNDMvqRR3e1iJIyauSu/t6Jm
	 URq12XvHpeG2bfMVMhfnfULVLZejmCo5NhVcDcvJxRTktIEssHN1vDDjGKE+H33uOv
	 X77WJw+C3uDG/ENy0xkTasHEg6z6zDBkvSLGxluNLqtNrQmDzAJQstVku4cKtnWAfz
	 PgRimfdfpdJQfFNI1coqQWQa+ZHXyz0dqaUEn9g4SF1s/6k4mAJ4/eHCeUGkmiJokH
	 MeMnbt2uNv54meqPptqsgHdZpZmMPrHyPj9HGbXTAsNef18Zrm9oO89x6qIbX0Y3R+
	 Ttzt80YNLPGrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE96C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169134198867.17424.14737095531456045210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a60f7293dc9567141b0e11b5b16c1ca490057beabf0f5ba682341d52a35b9af
Date: Sun, 06 Aug 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691341988
