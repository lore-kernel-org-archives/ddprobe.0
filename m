Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D8417D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776991054; cv=none; b=bhgyyZWCrKP2ooRPx8KzovFl85OLpF2iJdcqd2DERW0xxa9RNuM3ZQLsH/rVmfXH/MskKc2PxOl5dMVoNt8leRiiYh9uW+cq59WeC2CJiTIHn2jnw7Ifj5m/SAomZezit9RBNS3jpg/sNN6529+X7xd16xrtMLAhMfP3CYr/3nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776991054; c=relaxed/simple;
	bh=LJ8tsUWPW4Q1uZ6KiEU7EsUUhczcpwL7V2fE5ia9ThE=;
	h=To:Subject:From:Message-Id:Date; b=TRTGlXdRlI1Vlcya4HVdz/Svogn2YGyTXZmmMYvLq9byPa/kp7Uti7OJdzVE3eoR9kmur6MJPTIuhpGd3KanjzYgVO4Bxroyhj0+O45ollEHIKRCHINGg/Ev7prslnJ99z52tnxH5fehyVJ0Pd8Vi9bb+izn/3DQPbQqgebWyU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbtCcvqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbtCcvqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F7C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776991053;
	bh=LJ8tsUWPW4Q1uZ6KiEU7EsUUhczcpwL7V2fE5ia9ThE=;
	h=To:Subject:From:Date:From;
	b=HbtCcvqM66+dQXp+srWhh2phVPirPq0TcjkBm1x2jZ7f4EG/3bAKUJF4wJpXGK1gi
	 wBrhEi2Er54PMgeA3mK8k2qIbWNt94nxz3A4ZcGaeSbsbYDq0oAYlBlLXDdI/IVXtV
	 uR7Vx0C4ZS8Khf18DkEaV6rGdvA8JauC2Qr4JqWjtnDGTBwVnPMoVCwyPv3rKwgQd8
	 yVv0DoCt4ePOIQbilt7dn7WrtZ66D8aGltmxd31SXBopi5Eswww2e1xjMM+LzEDpvT
	 arWlkc5P4/hGUXJfSUnkWombrRcRau+53dW1NDN4L13b8o7lsuL+9+BCZbTRYgwbN4
	 7f8mlp6tK0nzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A18FDEE53
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699105368.3048.13277096668211197114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55362e396160f60ddcf1de229e49946ebe2b3f2bf9caa96c6981542b6b2dea98
Date: Fri, 24 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776991053
