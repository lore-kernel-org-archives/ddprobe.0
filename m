Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0638A7498
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3ciCUgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7F0C433C9
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698145096;
	bh=f7UIHiuKw/9DgVxz9bIAGYNhAClBEEqMSnDdGN0o9aQ=;
	h=To:Subject:From:Date:From;
	b=g3ciCUgVXV1h8fUJDCXmL2/EjkDTtHQUNTBaJ8YanRbuh7pr2bkI2Iyepmx/p83gr
	 7bdrYj4HSBqOu2uy+TYEpd0lNp8O1bNnNKJwHb25hqxzlV7Eykl9n6Tk2APwk87rSp
	 d49+Ipx3mgQltqDRin94W9Qg9aSQzqYvbInrfcz2v3WozYg7XDC1X7fubnO0O2EISf
	 TptnMbdYRwYg3/x8Q1sGu5A6a39lGxRTVmcVjF8uo1byR6lI7+lGAE2wYIoQuEMO/Z
	 SngF5+sYX4RK+3ZxzQDl34enfgiMQ5EgI+uN/s3vb5Mi/XqkUJJju3gn438Ez4pY+Z
	 ib9pJckVssSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6E8C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169814509638.28452.6263243076105781865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f760e67143bb8c10bb22bf6d4474ad13c5674660635a09eff99a30ce2f9685ce
Date: Tue, 24 Oct 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698145096
