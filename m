Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9576EBC
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C75C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670646087;
	bh=xLJVDwzZ9DNr/v8+9QtpcI+xssnXVEsQxf4sotvmdHg=;
	h=To:Subject:From:Date:From;
	b=oqFGNiFHT8p8KDo1uJ43JiK5Ib55mXnJuwa61Vm/x8AnYK1a3T3mBGa5OqYa54JQ/
	 6yOsP/y4FRJedmt0KaHicn6eq0OKFmQ9WKcez7c+jAumpQVMiysZFkq98Jb5mbvMKO
	 ZYvNJHNr518jdB+7fvIJHcItsq1yc66LTtNfU8ouFkG4+eZa8/ppSu1WdTtC4pkYMZ
	 6P7g4GTiGwP1wDjTtDyjspPw1VZYULhdFq2YeoxYLec3lJN/3lrMLEWmedTI1RLFhs
	 PWpVMeWZTgAoMIC5sR5mAMcXNZuqmvuS7lHtXxTcvHIUUBiNw0/PhYEE1PloUo/uhF
	 bZ/8y0juA/C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A861C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064608741.6511.8513765137912113859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b74f5ee1b00e10aeb7dfe7ec5786080c221a78de45605725596c625c60ba892
Date: Sat, 10 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670646087
