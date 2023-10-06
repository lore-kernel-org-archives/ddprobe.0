Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A0748C
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3BWKeW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7382C433CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696580828;
	bh=JHI+QAGs5hXkEEQDnRdVo3KaD4mRwZKVNqreev4qYIU=;
	h=To:Subject:From:Date:From;
	b=k3BWKeW8E80oE3ho1j4KzWKLwBk4zHYZ71GEGjuNawOXlQmYvaSLfMctYdbQLXsCV
	 E5j/ZsSLOM7fj1U9tu1JsTiiq/Pv8gKygveDELFvCQnpDfW4BOal6GMqdvb3MI4czD
	 sRSMm4WJ9fK+kLUnSw0L4ppizekcaGQCfFA/wyjsDOSOE0GTkoy55DZX9lC2qGIuCc
	 1cU2wzPs8urEzBlsiYzGCmOIffmlK2rUoy1i2cKB/FmSZ2otN0FQbjCNHOXO1US36t
	 TKJtvYLJLGdGaiFBFEAFhdlshEO8moQjnH1tVF1g2UQXjDULELQuwBinw/6kqjfkwg
	 E5gbmtGS7TsBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6789E92FF8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658082867.6335.8840135841435961703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8800ac246315014339f9c5429fffcb5f37ded3af4d8d0ff5b1058fb8df7c8ef
Date: Fri, 06 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696580828
