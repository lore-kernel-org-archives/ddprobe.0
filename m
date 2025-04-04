Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F95DDC1
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743798594; cv=none; b=dxastfQqo/gceG9nrgkuQdvsSVY9zXDvX6HthcVOHHZ9LqTpSJkLg/FIxgN0A4fGk0ROUX5rdVWFXLnW32troPcnZCWxqQMVIjY/Nvvpvvs2rpZPjPAS5ebqdIdzdQy+mzYlHXE0G6Twf1MVAmpay0ss9mH7ncMhA0hruhXARD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743798594; c=relaxed/simple;
	bh=jrfVjldVxPAPlljA0g8hnLiAW/WA3V0S2DGKM/RNDNE=;
	h=To:Subject:From:Message-Id:Date; b=SSHPl6P+L/Vf8/zMZKAOwn2ML0I4eHePkOueR2M/0A2PoVXQL372wP8U742CmZkJe8tgxL3iAW1yZuyuXZuW5iIe692hYD/D1mDHxyQuFDf/ePdknwuC5V9BLFVHQsIcQLto6TIEXDi855ym8/CeH2RLC+Wv6Ytp4VTb48wtp/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3jhTLlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3jhTLlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743798593;
	bh=jrfVjldVxPAPlljA0g8hnLiAW/WA3V0S2DGKM/RNDNE=;
	h=To:Subject:From:Date:From;
	b=l3jhTLlIwxCN5fQBkH/chvnGfeDRux2LoOK6OoD77dt8whhT0OveVL+WCaSwRtQMX
	 /IE323Tgmo17IV1wj2jMciVRIgbNJhXH6VETwoCjf/Z6fD8Iqftxp1f/8mWWuv8Dtf
	 e6q6HWh6amg9ZQRJCL95gM6HWmicdYUqHMRXndPkW8aTFhjF2ZAIyu0TdHU/OURPFD
	 DjAsDMPxL5kuBSUNbQd0pL/qYjYv2RadANm3CaxAJFwXk5HY+gVt4qUFrbxKwIvKcv
	 vteCUj7H9mEg/emgDemLqljfu2n3s6DnUiMg0b8fmxUFgiE1E8UlM24WI4Qaqbw7xq
	 wgRPjxsvOilLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379859358.3693.18376218325517029998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e705942e243f552e663b33fc5bbd380cdd882a97f9db2cc43377bd274b47da
Date: Fri, 04 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743798593
