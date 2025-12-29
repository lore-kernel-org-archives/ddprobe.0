Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDC119C556
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767022434; cv=none; b=ZYBkA6WcRquWRbSoMbG6TUyROsiDewBeySPSWPUkgxyVBZHMIiXojoLN/MgLidL3zNBP1Etpu01n+BhkqLt9hD2QZM+l34VyrcynzXLbeaAbKwOAjUFSwvLPoUNlC1YP7oBdwkM1mDy1tI4kQS/xr22byp/OmxYdIh/NG9Ccom8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767022434; c=relaxed/simple;
	bh=UygxlCXq8jP3e7xjwdNOTqPzMsS/D0bpcvMkJlZwH5Y=;
	h=To:Subject:From:Message-Id:Date; b=gZ0FBEVQaCZUteXkM201YysX4mzUPs1O0uNTeIjyqZIhiUcfnEuCMS5E2SOe6U/T7ucbDLR89EJQDj4TxV8BhARr0ox0YQ42kyCP+r5jJchxlnHNxKg3y7Mu6UtSWpQrtZJJxhpS7zxIIrYe8hyJYk3B4NHo/UpBvKWOAYj7tmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCBchlx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCBchlx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C38C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767022433;
	bh=UygxlCXq8jP3e7xjwdNOTqPzMsS/D0bpcvMkJlZwH5Y=;
	h=To:Subject:From:Date:From;
	b=PCBchlx5Qt1wj3kBECUp97MNQRVdGGLKnUMWfzth3yjuoUM9tQxxERquyHl90DfSa
	 hY2l9IwGnj8WQTXur2YZWrv3pLPplTpeOPJm2Hfpw2rAeldQ4vFoT0QKaZgK1ngAxR
	 OswG7jlMB4B1F9HbFjzlpaHjAFsXPIdB+ynHqe+MV6z5plG/17DlOTEWmxj1WPJGRX
	 wbS8tf29IJ6klkE70aYi27dNVSV5a/kDNDF7JEJ61wnrSzTfGn27rSdVJiOsPBZWv8
	 CBs72UlxLkju2FZSpOqVVnt0kpBnY0Msyhk08nGWvHF+jnPj9m+xHMoA98Vh91c1f6
	 baS2lI79z9lRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B854BE92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702243374.13703.4903030953410593388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6062eb880829596a3a74f17c236e0814fd73315b4dfe0e9454db3c5b2d62988
Date: Mon, 29 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767022433
