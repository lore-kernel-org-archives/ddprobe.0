Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294948F5A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746662994; cv=none; b=mTJX+ooEolJeklV4kkxRt49Z83Z7/7j2vdLijJKhl29Qzo4qy4eE439kkLVyrS46QFgbgoyeKgU2AdWNMExtoP4xx/q52T5eMma9mMQGywXiyVc24f7bIJvJwcVf3upzHBhNWkYFJ1IbDJQMPZomtSEzbSCaSIqd3hn+gTuQu10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746662994; c=relaxed/simple;
	bh=feCj3QQz9t8aR6Kk/MWV1j4bukYlaIp5OEX2mQeHgVE=;
	h=To:Subject:From:Message-Id:Date; b=pVmEa5CjKG46eFMWoid5x548NqbcXlFd7ebePprAstTB1sdPus1dVFFu6DKnjUJ8c1iujEtbKUM/Q+y9Giit1ekpPWX5bpH0jV/hUiYkXN0ZirjWdYuOpCAIegcIPKP8beC/9Ngq4+wV3p6NxI04z+b+Y2hDXQTPPGKoXEiIAV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgL6GIa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgL6GIa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4A2C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746662993;
	bh=feCj3QQz9t8aR6Kk/MWV1j4bukYlaIp5OEX2mQeHgVE=;
	h=To:Subject:From:Date:From;
	b=BgL6GIa3aknCVeBVZWnU8xnrucgO8c9mAKnwKSAp4hLwDANC7aq/D1J+LWEe14JZD
	 Roc1ajml1zkVypE3beO/YwurTiUn9hM7rT7OQ2zaFc+poEb7H5UxRnVeKrMzKd5lV1
	 iua2oxW/1xi49uJCt75PtCqDhR4GEDeA++sn+3WXgBsKXSXX1tNC07h+r3Nfzx+iAv
	 y2Amic4xZjFWisZLVtiKqYfODrzFWU5njEHMn+HBpUAsX1+sHW4Eu9cD9IpIcb/F/Y
	 V4tFU7im3wHJ+q6/Iykc/3RDwWgAw0Suy+5zjU9X5/M9WamU5SbVm7t3g4M71TNPe8
	 WJVWJ8F48WX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E50CC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666299357.4544.2043694620783406945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c0999939dd1ff5b7fa24608f10e8183ec35e300d21e54d672063c281e5ac78
Date: Thu, 08 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746662993
