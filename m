Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585B14A32
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742096394; cv=none; b=kgXFyuc4dG4uhso/N9v+WzNBlLFO8tirVlIJXeOCFtlJAzkjqTU923gyxqbgqmyU052JllAu3Fd0foVJTKFxZ4eckpw63CePReA27AaR3/+e6auGmmKVSl4STKuIJHZBh7vVivr6bWbWgUAI0xbCXNNF9U2Ze6fnI5QDTd9J810=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742096394; c=relaxed/simple;
	bh=bWCezDyGRwxR4eWsh/mcqFSfWBfCyoRHO3qWlyxDZQE=;
	h=To:Subject:From:Message-Id:Date; b=ORMQ87pL4sySSe8ovNHzD7I/4ZnPhplqBvwt8jfTrSrAWGrkuT7RjzRlIkJrAXuG8qxoCfCR7ev3PirXNrWoD4I8cSfr0yQb+2Cu2Rd78o3JLamnLdOEalMNpAz/FKnI1BifLTPvfU2ParEoNbuE0faRtk56lel3EKyxmv8LoO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1rKkx+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1rKkx+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6C6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742096393;
	bh=bWCezDyGRwxR4eWsh/mcqFSfWBfCyoRHO3qWlyxDZQE=;
	h=To:Subject:From:Date:From;
	b=B1rKkx+lHMb54TGZy3NY7yxY9K2YAMpnDlBNRhRho55n7xkFmoz91+C02/fVxBxuS
	 BuT8Y/PdGSlmozGwM0BrjuA/XtAY9zmXjBfZKJZZgKnqsH6CnyPd8rBCU7nA9uZD0h
	 S0HpL47FAT0pEqtlmfo0xTPnD2lc+VxT6pAg4GMm8t8AMxJrbtkXY3On2Wz7GRL8St
	 xTF/aeP7lWi+eLjJTxluUO8giTjtzfERxQX7PM7+9+jUCaeedMtFAG6lnWBAUQicBg
	 PmojTLPDsjtbgmIM4FVb7pXU3IG5myO5ZnBaGyKARAuiWHWaSsGTeXxZQ/WJ72/6np
	 zUjhyorl7b4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0391C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209639363.13841.4009378707932042640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf3bd4bb22e2ea3ad697873f868c38735db3feb57433ea5676f6006ac3a954a
Date: Sun, 16 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742096393
