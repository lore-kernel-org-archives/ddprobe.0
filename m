Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC2F1DF254
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779237034; cv=none; b=EBBQMFg/n017KO/MphXGxmJN+0OEr9wWesZ6a/NyrPYkpg8+nHWxpjsNTH7VHOn6n8u+kmzi4dvEWDKy1ZnrUdrEkpj3RkvS/bNmbPuQ+pL8xhkMr2o8ajXsEjArLxL3DuU/3B18KGWboR7fmpLLc4pDmyoFOIGrZhcBKGz0VZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779237034; c=relaxed/simple;
	bh=5sPvQNcm5dUekOw3sUuhMmzLqFUWCasKizWVJy9WkTs=;
	h=To:Subject:From:Message-Id:Date; b=Sfdn/MSi6jAmdofSuOxX4iZurE4bX/G3xtBo6Jy63zTLF/JCb30D2Js9gBDXDXa6v8q11wW3Wn/Z1P7NCSw45E1EJ0/j82dobYruD4fAMdjGE5FGDtpUz+vGixL3yQEudsYNKxYV9/kGMRU2yhf6hX4N6o8B4BJ1M0BO+ylIM3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqcANTZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqcANTZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8027C2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779237033;
	bh=5sPvQNcm5dUekOw3sUuhMmzLqFUWCasKizWVJy9WkTs=;
	h=To:Subject:From:Date:From;
	b=BqcANTZvRGMeAFJzfgHXWxY2w7OeaI6G6SzJXqD8iyIKuEmzwir1EzW4Fx1ihfnG8
	 XaiFTvFFP+zgPmyWG3xhW2066/6wNRXzv1r5TOTdyVIwtfH/jTvzgmBQfewOz1s/AI
	 NBIh8TtyLJwLlB7fgqpIA3/T1pf4LG53CJQAQ5svl7BDvgmhJThTazyHcFOEBGDtqK
	 vEeHj+9rUeKF662iKruRcoC/QuxZ0CONX5wxIqbFCAKdFT+rsRWzRUxlbvHA45QXrs
	 8RmDrU8cyq24shWkMUc8HQneMYGGwBeSrvodbVLG56rZyOdg/zvU6eQXEafNBuG9cq
	 su0sQWVwvamSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05A9CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923703368.24912.17525225903113310636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee52f4e8dfdadeca4fb4dc5cc369a21c34fe17986421be7056066485ac10747
Date: Wed, 20 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779237033
