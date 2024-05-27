Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF40535A4
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716838463; cv=none; b=HLrooxtIA/Di3t4xEEYxTAf+9UCM65L82iRsAgJMwBfLXQiseMriL+/vZ6Gdv00w6Ixhz6D8VTr4T50N6w4o2ntZ5kijvy4o6lTH+JzPk/XmRdt8PKfjjYJyovNPwO/qGANK4ojf68xPug8hhgMaRa7vlXWAVQigqthx1ctbcAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716838463; c=relaxed/simple;
	bh=E/TPren4h09j6/Ej4/CD9LY48dnp8JC/prO3GCOmVio=;
	h=To:Subject:From:Message-Id:Date; b=GHVkY10pkvgR6X8p/EI7RyF9DXBsm1vl2ssk1F+E+y8vXnWAKb9y/y8ZI1jVcRAeU/9CaJsiJ9nG4NWUrpdkVqez84btUqU2LuKiwUfV0Nj8vD1Hr3Odr5BWhyJAFLELkaIA0N/8L/yvoAzKrWUkDFnRVQoQX3qRV2uwx6Vv/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8cz4Yf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8cz4Yf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68C3C32789
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716838462;
	bh=E/TPren4h09j6/Ej4/CD9LY48dnp8JC/prO3GCOmVio=;
	h=To:Subject:From:Date:From;
	b=p8cz4Yf9vKMgbzabXpNXygUQYnaBF1BOYEz7ohQnMPPk7urs9Sv15gFkVslOxsFtZ
	 2aPS34HR6RaIWi0RTnH7RIW6GkJ2be0S0G2FM4R0SBrjIAG0B6kr/1PCuGTJvAUtCH
	 Wan+u6O1tzpIw58DVXov4taiGszM7JG9nCcCcck+wkT1sg70cSwqgMx0P1L5AhdaTX
	 GZZxftsGJZ/uHMSICWkxqZySu2CCqer/sS+BC56vDg5glRl4kC4JFVi5jvisIof7sv
	 hpdbDO3QbN+dpLig06V052j5AeBRgRnC2JbZxlzKjrXlWbkuHNypXzR4o8hHBzMOv+
	 Ft+xvqnGAzaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5585C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683846277.18599.11687354953073804355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10cef5338c4fdf8101ad8dbf7fff0a1a9dc7c7f283f7117e6d7a5e99fb78e4d0
Date: Mon, 27 May 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716838462
