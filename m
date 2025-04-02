Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415211F4187
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743635394; cv=none; b=mVSy1B5L6ZNZPQ5COjYyBZP2HwXcAHcFHHveXdT3aiX9TjL1AI2vA8eGPwzxp++b1gjAcUeLV/qfw6kTGcuHqzu778Ad4+clGsUrnlJWZWsYErkJdyT6rmaE05xbIx5KKYQKSTB6DEFi46lxf/FnozRZ/59SbJ67bzvP+1o1BLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743635394; c=relaxed/simple;
	bh=0jvOFRPoWoNhD0hPz0SJ3LLzTs+9020aeuvj3bUbke0=;
	h=To:Subject:From:Message-Id:Date; b=L+0TIapfFArxLUEJCrW8pf/mzmdNhuXFhKv91EP25BKb5xH7se3Hdp8M0eWCJYsyuCWZrXsMW2YukZawOmrSFemzeMLdOvGT7V4N3RZAcA+teWHrCnfwPu/OX1GJzvXateMaBkv/D9xAWKUjRF7NL8h19v4RWXvlqeQBo4N7wcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcuEKGzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcuEKGzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E8BC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743635393;
	bh=0jvOFRPoWoNhD0hPz0SJ3LLzTs+9020aeuvj3bUbke0=;
	h=To:Subject:From:Date:From;
	b=QcuEKGzcj5MUBZ+w0oJMUTfdwfMC/3RM2918zXe0O1mQlDz6FHk/DxuQfLfWxU9Sn
	 pL9zt7B3EfQla2WWxRoCpEGjrUE0veYpjZ1qAB+InZxD1jVnDdjyVxpIvuD0SSWM2k
	 WnbuxslVfMregy0zdkPJAsXqEVG3vSoXmOy5rKcnxpEPCeje+X5ThIRpeM7pWdng7k
	 Nh6f19sPJsWOYhwYL/XM9xH6tvNyuugOthg1AxSJ3BXBwUSwXRQNhYD70r1rdKrklL
	 bdofsl8yJ0ZqnCzIuOamVZH+DqrP+nDVR/xNsUkShC2XYu/AE7734aFIXmsl/9hZYJ
	 XfccgNWljrQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A12C3601B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363539365.4136.8572059256577801806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3db449688299b5444e37a469cbb710f4f2dcd1651b2b398c7476210ce3f991
Date: Wed, 02 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743635393
