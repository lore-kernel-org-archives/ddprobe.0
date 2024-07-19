Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E3F7CF39
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721431555; cv=none; b=Nw6lfOycTjMCMTpfjIIQXc9kKb3fl5F+wWz/GK+3mrBvr1EjzR7ZMAkbjx33Qv+czxSE7WjF79QJMlAChsQLoJUuEyInglXhimu6hWEGqdSGN2DvQCOBFIPa9Bb2yWIfXlAh3wZagkP5TYAE5PfnPV+i8UZg4fZW2zbLXeKSJnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721431555; c=relaxed/simple;
	bh=KxG0j52LQHJ0m3RDtKow90t69t/smmloOqAOV6WLrnk=;
	h=To:Subject:From:Message-Id:Date; b=Mr+vzXrKoDTinZcHcxi+LjDjt2GscXjqEbJbXE4soqO7C0GBTwxuRBa7PyyZoe33GEZjYITjx8oFgpYymk6G0f+F38Vnb1IfVz31u0G1pIbsv5j06q4Td4QbQZwCrI7cg6+UGS2LI4mz4j4dOWcevTvgw8c4gQd4e6Z22KMMwRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCcPrh44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCcPrh44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF828C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721431554;
	bh=KxG0j52LQHJ0m3RDtKow90t69t/smmloOqAOV6WLrnk=;
	h=To:Subject:From:Date:From;
	b=qCcPrh44sZ352ln0gPAGGXBRf+BnOPWIh0p65hokQteRsAXs/YbWsxoSvhp4jYxuD
	 sopEb/Ol29+ln6RgjaGJ5jrGAANQ1GqzqydhkFuckBp+p5oXFPTazai+G716lMO6p1
	 hvk61u6JV/XixwBEG5yRa5wqBaNAAuRoR01ehwYopVEyRNc766P0U9R094Kqb9m5Uw
	 AR7JCuVQ8FL/RhKTIV6UJOpyXybzVw9kDb8nmaU2qRo3pAGa5uKyArk0FdeMzkLlkZ
	 allNpdeWGJd9p4o0ukbjTkJDO1ZHfxVuZtfHCd4e3jt9tC5MTDLimI5ElrZJyeVTaA
	 SqzfxNyMwxU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983FCC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143155361.10185.5654271345137016331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e161c578f97cda623d1993022ff05fc53b48f0ea50c83ade093dc32af0ef9181
Date: Fri, 19 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721431553
