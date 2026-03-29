Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5664502F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774765494; cv=none; b=qjAEGNcfPvHfmZXlOTA++1psTa+VkQW/7uttl3oVjuEEXVwA9jUAMvnUBlogQI5yz/PKDNS93FcO0+LbTHaY5s8NwpHotMy2vNR4BQdU6NcPrWg/ygUa7B97UNrFo0iIPINorLaCSq8pk1AkuZbSVz3mwk66f4qJJiHiTmK2nrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774765494; c=relaxed/simple;
	bh=lL0c7/mLKjbtwWBqAc3e9BxZWoEJiLH4TLFsdo2++gk=;
	h=To:Subject:From:Message-Id:Date; b=L4hHc7TjiasBuswuRnkT7vvpC1ji/1hxGFaP4UeAVqe6AmzLqxY13LDL221hmt65cuOPBGH+qH8lA7h5ES91pA8MV1Sn+OmdceJOFS9cI677P51hqttI0cqZx4WUMvGhyhYHcpR9BjB2TUSDlA/fXmCogSaqgDL3Ag7jBwqJ4ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xyt6A0oG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xyt6A0oG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A83C19424
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774765493;
	bh=lL0c7/mLKjbtwWBqAc3e9BxZWoEJiLH4TLFsdo2++gk=;
	h=To:Subject:From:Date:From;
	b=Xyt6A0oGflZ7X+T4xJSwNnQJVDaSSAIZCqYP0jayxBLd516HYGmoKABejMxdsJ/eS
	 6yze9HP+zPrgbq+A3St1YLNodhwjSN1tG914ihWef1XNfcTvu4lWlEzwViKEd0a8cZ
	 5B9OXttXMrVouHGXc8S/5/QcT7VEC9AhWNuJ6o6nkNoh2d/Zgj9WkxY9f8XYH+26LF
	 kDc/gg5kmSOPgRiNME9lwZPaA/WhfztVEvMGMiIdfrAkML1XTuI6WTo7cDB6hO/Jgt
	 ui2MBzUA4vtJOtlyiTtizMExun74erYMuwkNKW2+4F9a8ntC2HuQ3TdzUQGT6QJ8m3
	 GgVlEDfiy9z2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C6F3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476549358.9947.13044725514075131140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb1d80371ff0b8cf07210830895775a03333be17cd4564fb4afadd7f80e692d
Date: Sun, 29 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774765493
