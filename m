Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AB028F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E6CBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671705687;
	bh=UEGoRrWy6U15CIob36itWJM8BGtztFQ6K/kdlFBRbpg=;
	h=To:Subject:From:Date:From;
	b=XhoKWwxRjeByRmRUdnjuzMMuGNxB7sBZiVh66IUn3CB19o/NTyjIlb7Ekuqcn77+2
	 bVeANdEYwY4/eymKK0IMK3x555FpWme0ub92JmgqTycMCt57RTmcsxmW43I2keiHZe
	 Ugu9JGEyBYHPsnMq50yW1okG+c0Q6gmsiXb4OBzJzz5lU7PtUBTy4ija3RCR9NuOYk
	 1rlUgh3Bcn5YkKMz5ZF04+7h+fxQkZ1/7MbzK7/WjOJ7SUiavtro2ucUICXduVz0GX
	 WfwGDcKWeyQSA8L5QBMVoRs9cTGioCaaXLs71BGKMv7ykNVfHMG57YWeMz5+A2Mkf5
	 ihjVYdIfeK+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D55CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170568743.11801.880182736708391808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2642d12fefbdecc018d763a067befb70e059203e785f5de175659363f197c9ab
Date: Thu, 22 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671705687
