Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C183398A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748429396; cv=none; b=YioHfSHQBm+yb/SNqhPKD4Ia2qW3Qnk+ugXhY9EaoDCXSv4Lw07lu/9lc9nibX4SU/xK4Vo+4VtDBjA3oPoYgtBxzaujHDN5lQi564ZO/2coXhhOv8vMwgXX44HX7kK/m74ZJEepyVBxTDxim/8jC2IrrqXsWUFSqUfU0hLcr4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748429396; c=relaxed/simple;
	bh=B09eZAdHY4R7yd1iYMgIvR9fUaWePnZnUb+D7yjA7v0=;
	h=To:Subject:From:Message-Id:Date; b=umpY/kLqlSb782a/ytC4Br5jOGbJAeCNdHql/NY4OSaYuxSLAuLA2+1caSH+wQRohoHeEI8QM8UHxLPr1cjblIj/66CFSC8Sq9bXhrL+J3hR+xLbTqL7c3/pjzi/zpPO8++DJvXrk8z+7DKD/LCBp1hp6Laix5LkKiq4VzzAO6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2NgWoE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2NgWoE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2864C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748429393;
	bh=B09eZAdHY4R7yd1iYMgIvR9fUaWePnZnUb+D7yjA7v0=;
	h=To:Subject:From:Date:From;
	b=F2NgWoE++2a42eB66c8lEVvk5yFWJtQ14JtWEBkmfSP0uA2t26ywo00kqm9ZqupAj
	 PzKULDXA9e+e5PNgvxJ1edoUbjupA/wv+jLrzgukQ9OZeMg+lkZu4V043ekB7Jk2ov
	 60r7lMPToNvYwu08+d3CZPOu0DhqdAAlOUGTzD7sPt0FHzYWbQO1FxbI9v/Nmbm+DX
	 CD/eXx75BaqcROO7t+KerReldXsFjkmPAfZaq6gfAWcgSvg4Lwiyonuaunh58gALg8
	 +fEavoNMYrHyZeiewWdQpQ+YcjzWlzvjaRn13yX3sUo4xSVzykTCWXCN29LqQC8nyj
	 L7bav/NWMbZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6FC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842939358.11328.4419237294495954005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46496ded2eb9e621b6c7023a97443fe3bbd95c3fb83c74e38f2ee1eacd43a246
Date: Wed, 28 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748429393
